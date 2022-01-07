
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wbcir_data {scalar_t__ sbase; scalar_t__ wbase; } ;
struct device {int dummy; } ;
struct pnp_dev {struct device dev; } ;
typedef int match ;
typedef int mask ;


 scalar_t__ INVALID_SCANCODE ;



 scalar_t__ WBCIR_IRQ_NONE ;
 int WBCIR_REGSEL_COMPARE ;
 int WBCIR_REGSEL_MASK ;
 int WBCIR_REG_ADDR0 ;
 scalar_t__ WBCIR_REG_SP3_IER ;
 scalar_t__ WBCIR_REG_WCEIR_CSL ;
 scalar_t__ WBCIR_REG_WCEIR_CTL ;
 scalar_t__ WBCIR_REG_WCEIR_DATA ;
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ;
 scalar_t__ WBCIR_REG_WCEIR_INDEX ;
 scalar_t__ WBCIR_REG_WCEIR_STS ;
 scalar_t__ bitrev8 (scalar_t__) ;
 int dev_err (struct device*,char*) ;
 int device_may_wakeup (struct device*) ;
 int memset (scalar_t__*,int ,int) ;
 int outb (scalar_t__,scalar_t__) ;
 int outsb (scalar_t__,scalar_t__*,int) ;
 struct wbcir_data* pnp_get_drvdata (struct pnp_dev*) ;
 int protocol ;
 int wake_rc6mode ;
 scalar_t__ wake_sc ;
 int wbcir_set_bits (scalar_t__,int,int) ;
 scalar_t__ wbcir_to_rc6cells (scalar_t__) ;

__attribute__((used)) static void
wbcir_shutdown(struct pnp_dev *device)
{
 struct device *dev = &device->dev;
 struct wbcir_data *data = pnp_get_drvdata(device);
 int do_wake = 1;
 u8 match[11];
 u8 mask[11];
 u8 rc6_csl = 0;
 int i;

 memset(match, 0, sizeof(match));
 memset(mask, 0, sizeof(mask));

 if (wake_sc == INVALID_SCANCODE || !device_may_wakeup(dev)) {
  do_wake = 0;
  goto finish;
 }

 switch (protocol) {
 case 129:
  if (wake_sc > 0xFFF) {
   do_wake = 0;
   dev_err(dev, "RC5 - Invalid wake scancode\n");
   break;
  }


  mask[0] = 0xFF;
  mask[1] = 0x17;

  match[0] = (wake_sc & 0x003F);
  match[0] |= (wake_sc & 0x0180) >> 1;
  match[1] = (wake_sc & 0x0E00) >> 9;
  if (!(wake_sc & 0x0040))
   match[1] |= 0x10;

  break;

 case 130:
  if (wake_sc > 0xFFFFFF) {
   do_wake = 0;
   dev_err(dev, "NEC - Invalid wake scancode\n");
   break;
  }

  mask[0] = mask[1] = mask[2] = mask[3] = 0xFF;

  match[1] = bitrev8((wake_sc & 0xFF));
  match[0] = ~match[1];

  match[3] = bitrev8((wake_sc & 0xFF00) >> 8);
  if (wake_sc > 0xFFFF)
   match[2] = bitrev8((wake_sc & 0xFF0000) >> 16);
  else
   match[2] = ~match[3];

  break;

 case 128:

  if (wake_rc6mode == 0) {
   if (wake_sc > 0xFFFF) {
    do_wake = 0;
    dev_err(dev, "RC6 - Invalid wake scancode\n");
    break;
   }


   match[0] = wbcir_to_rc6cells(wake_sc >> 0);
   mask[0] = 0xFF;
   match[1] = wbcir_to_rc6cells(wake_sc >> 4);
   mask[1] = 0xFF;


   match[2] = wbcir_to_rc6cells(wake_sc >> 8);
   mask[2] = 0xFF;
   match[3] = wbcir_to_rc6cells(wake_sc >> 12);
   mask[3] = 0xFF;


   match[4] = 0x50;
   mask[4] = 0xF0;
   match[5] = 0x09;
   mask[5] = 0x0F;

   rc6_csl = 44;

  } else if (wake_rc6mode == 6) {
   i = 0;


   match[i] = wbcir_to_rc6cells(wake_sc >> 0);
   mask[i++] = 0xFF;
   match[i] = wbcir_to_rc6cells(wake_sc >> 4);
   mask[i++] = 0xFF;


   match[i] = wbcir_to_rc6cells(wake_sc >> 8);
   mask[i++] = 0xFF;
   match[i] = wbcir_to_rc6cells(wake_sc >> 12);
   mask[i++] = 0x3F;


   match[i] = wbcir_to_rc6cells(wake_sc >> 16);
   mask[i++] = 0xFF;
   match[i] = wbcir_to_rc6cells(wake_sc >> 20);
   mask[i++] = 0xFF;

   if (wake_sc & 0x80000000) {

    match[i] = wbcir_to_rc6cells(wake_sc >> 24);
    mask[i++] = 0xFF;
    match[i] = wbcir_to_rc6cells(wake_sc >> 28);
    mask[i++] = 0xFF;
    rc6_csl = 76;
   } else if (wake_sc <= 0x007FFFFF) {
    rc6_csl = 60;
   } else {
    do_wake = 0;
    dev_err(dev, "RC6 - Invalid wake scancode\n");
    break;
   }


   match[i] = 0x93;
   mask[i++] = 0xFF;
   match[i] = 0x0A;
   mask[i++] = 0x0F;

  } else {
   do_wake = 0;
   dev_err(dev, "RC6 - Invalid wake mode\n");
  }

  break;

 default:
  do_wake = 0;
  break;
 }

finish:
 if (do_wake) {

  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_INDEX,
          WBCIR_REGSEL_COMPARE | WBCIR_REG_ADDR0,
          0x3F);
  outsb(data->wbase + WBCIR_REG_WCEIR_DATA, match, 11);
  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_INDEX,
          WBCIR_REGSEL_MASK | WBCIR_REG_ADDR0,
          0x3F);
  outsb(data->wbase + WBCIR_REG_WCEIR_DATA, mask, 11);


  outb(rc6_csl, data->wbase + WBCIR_REG_WCEIR_CSL);


  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_STS, 0x17, 0x17);


  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x01, 0x07);


  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_CTL, 0x01, 0x01);

 } else {

  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x00, 0x07);


  wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_CTL, 0x00, 0x01);
 }


 outb(WBCIR_IRQ_NONE, data->sbase + WBCIR_REG_SP3_IER);
}
