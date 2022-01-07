
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbcir_data {int irdata_error; scalar_t__ idle_count; int irdata_count; int * irdata; scalar_t__ sbase; } ;
struct device {int dummy; } ;
struct pnp_dev {struct device dev; } ;
typedef int irqreturn_t ;
typedef int irdata ;


 int BITS_PER_LONG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;



 int WBCIR_BANK_0 ;
 int WBCIR_IRQ_ERR ;
 int WBCIR_IRQ_RX ;
 scalar_t__ WBCIR_MAX_IDLE_BYTES ;
 scalar_t__ WBCIR_REG_SP3_ASCR ;
 scalar_t__ WBCIR_REG_SP3_EIR ;
 scalar_t__ WBCIR_REG_SP3_LSR ;
 scalar_t__ WBCIR_REG_SP3_RXDATA ;
 int WBCIR_RX_AVAIL ;
 int WBCIR_RX_DISABLE ;
 int add_irdata_bit (struct wbcir_data*,int) ;
 int dev_dbg (struct device*,char*,...) ;
 unsigned int hweight8 (int) ;
 int inb (scalar_t__) ;
 int insb (scalar_t__,int*,int) ;
 int outb (int ,scalar_t__) ;
 struct wbcir_data* pnp_get_drvdata (struct pnp_dev*) ;
 int protocol ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wbcir_lock ;
 int wbcir_parse_nec (struct device*,struct wbcir_data*) ;
 int wbcir_parse_rc5 (struct device*,struct wbcir_data*) ;
 int wbcir_parse_rc6 (struct device*,struct wbcir_data*) ;
 int wbcir_reset_irdata (struct wbcir_data*) ;
 int wbcir_select_bank (struct wbcir_data*,int ) ;

__attribute__((used)) static irqreturn_t
wbcir_irq_handler(int irqno, void *cookie)
{
 struct pnp_dev *device = cookie;
 struct wbcir_data *data = pnp_get_drvdata(device);
 struct device *dev = &device->dev;
 u8 status;
 unsigned long flags;
 u8 irdata[8];
 int i;
 unsigned int hw;

 spin_lock_irqsave(&wbcir_lock, flags);

 wbcir_select_bank(data, WBCIR_BANK_0);

 status = inb(data->sbase + WBCIR_REG_SP3_EIR);

 if (!(status & (WBCIR_IRQ_RX | WBCIR_IRQ_ERR))) {
  spin_unlock_irqrestore(&wbcir_lock, flags);
  return IRQ_NONE;
 }

 if (status & WBCIR_IRQ_ERR)
  data->irdata_error = 1;

 if (!(status & WBCIR_IRQ_RX))
  goto out;


 insb(data->sbase + WBCIR_REG_SP3_RXDATA, &irdata[0], 8);

 for (i = 0; i < sizeof(irdata); i++) {
  hw = hweight8(irdata[i]);
  if (hw > 4)
   add_irdata_bit(data, 0);
  else
   add_irdata_bit(data, 1);

  if (hw == 8)
   data->idle_count++;
  else
   data->idle_count = 0;
 }

 if (data->idle_count > WBCIR_MAX_IDLE_BYTES) {

  outb(WBCIR_RX_DISABLE, data->sbase + WBCIR_REG_SP3_ASCR);


  while (inb(data->sbase + WBCIR_REG_SP3_LSR) & WBCIR_RX_AVAIL)
   inb(data->sbase + WBCIR_REG_SP3_RXDATA);

  dev_dbg(dev, "IRDATA:\n");
  for (i = 0; i < data->irdata_count; i += BITS_PER_LONG)
   dev_dbg(dev, "0x%08lX\n", data->irdata[i/BITS_PER_LONG]);

  switch (protocol) {
  case 129:
   wbcir_parse_rc5(dev, data);
   break;
  case 128:
   wbcir_parse_rc6(dev, data);
   break;
  case 130:
   wbcir_parse_nec(dev, data);
   break;
  }

  wbcir_reset_irdata(data);
  data->idle_count = 0;
 }

out:
 spin_unlock_irqrestore(&wbcir_lock, flags);
 return IRQ_HANDLED;
}
