
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wm97xx {scalar_t__ id; int dev; int pen_irq; int variant; int acc_slot; int acc_rate; int * ac97; } ;
struct TYPE_3__ {scalar_t__ id; scalar_t__ speed; int code; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 int IRQ_TYPE_EDGE_BOTH ;



 int WM97XX_GPIO_13 ;
 int WM97XX_GPIO_2 ;
 int WM97XX_GPIO_IN ;
 int WM97XX_GPIO_NOTSTICKY ;
 int WM97XX_GPIO_NOWAKE ;
 int WM97XX_GPIO_OUT ;
 int WM97XX_GPIO_POL_HIGH ;
 int WM97XX_GPIO_STICKY ;
 int WM97XX_GPIO_WAKE ;
 int WM97xx_WM1613 ;
 int ac97_touch_slot ;
 TYPE_1__* cinfo ;
 scalar_t__ cont_rate ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,scalar_t__) ;
 int gpio_direction_input (int) ;
 int gpio_free (int) ;
 int gpio_request (int,char*) ;
 int gpio_to_irq (int) ;
 int irq ;
 scalar_t__ machine_is_mainstone () ;
 scalar_t__ machine_is_palmld () ;
 scalar_t__ machine_is_palmt5 () ;
 scalar_t__ machine_is_palmtx () ;
 int pen_int ;
 int set_irq_type (int ,int ) ;
 size_t sp_idx ;
 int wm97xx_config_gpio (struct wm97xx*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int wm97xx_acc_startup(struct wm97xx *wm)
{
 int idx = 0, ret = 0;


 if (wm->ac97 == ((void*)0))
  return -ENODEV;


 for (idx = 0; idx < ARRAY_SIZE(cinfo); idx++) {
  if (wm->id != cinfo[idx].id)
   continue;
  sp_idx = idx;
  if (cont_rate <= cinfo[idx].speed)
   break;
 }
 wm->acc_rate = cinfo[sp_idx].code;
 wm->acc_slot = ac97_touch_slot;
 dev_info(wm->dev,
   "mainstone accelerated touchscreen driver, %d samples/sec\n",
   cinfo[sp_idx].speed);


 if (machine_is_palmt5() || machine_is_palmtx() || machine_is_palmld()) {
  pen_int = 1;
  irq = 27;


  wm->variant = WM97xx_WM1613;
 } else if (machine_is_mainstone() && pen_int)
  irq = 4;

 if (irq) {
  ret = gpio_request(irq, "Touchscreen IRQ");
  if (ret)
   goto out;

  ret = gpio_direction_input(irq);
  if (ret) {
   gpio_free(irq);
   goto out;
  }

  wm->pen_irq = gpio_to_irq(irq);
  set_irq_type(wm->pen_irq, IRQ_TYPE_EDGE_BOTH);
 } else
  pen_int = 0;


 if (pen_int) {
  switch (wm->id) {
  case 130:
   break;
  case 129:
  case 128:

   wm97xx_config_gpio(wm, WM97XX_GPIO_13, WM97XX_GPIO_IN,
        WM97XX_GPIO_POL_HIGH,
        WM97XX_GPIO_STICKY,
        WM97XX_GPIO_WAKE);
   wm97xx_config_gpio(wm, WM97XX_GPIO_2, WM97XX_GPIO_OUT,
        WM97XX_GPIO_POL_HIGH,
        WM97XX_GPIO_NOTSTICKY,
        WM97XX_GPIO_NOWAKE);
   break;
  default:
   dev_err(wm->dev,
    "pen down irq not supported on this device\n");
   pen_int = 0;
   break;
  }
 }

out:
 return ret;
}
