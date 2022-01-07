
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int pulse; scalar_t__ duration; } ;
struct wbcir_data {int irdata_error; int irdata_active; int spinlock; int dev; int rxtrigger; scalar_t__ sbase; TYPE_1__ ev; } ;
struct pnp_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LED_FULL ;
 int LED_OFF ;
 int WBCIR_BANK_0 ;
 int WBCIR_IRQ_ERR ;
 int WBCIR_IRQ_RX ;
 scalar_t__ WBCIR_REG_SP3_ASCR ;
 scalar_t__ WBCIR_REG_SP3_EIR ;
 scalar_t__ WBCIR_REG_SP3_LSR ;
 scalar_t__ WBCIR_REG_SP3_RXDATA ;
 int WBCIR_RX_AVAIL ;
 int WBCIR_RX_DISABLE ;
 int inb (scalar_t__) ;
 int insb (scalar_t__,int*,int) ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_reset (int ) ;
 int ir_raw_event_store (int ,TYPE_1__*) ;
 int led_trigger_event (int ,int ) ;
 int outb (int ,scalar_t__) ;
 struct wbcir_data* pnp_get_drvdata (struct pnp_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wbcir_select_bank (struct wbcir_data*,int ) ;

__attribute__((used)) static irqreturn_t
wbcir_irq_handler(int irqno, void *cookie)
{
 struct pnp_dev *device = cookie;
 struct wbcir_data *data = pnp_get_drvdata(device);
 unsigned long flags;
 u8 irdata[8];
 u8 disable = 1;
 u8 status;
 int i;

 spin_lock_irqsave(&data->spinlock, flags);

 wbcir_select_bank(data, WBCIR_BANK_0);

 status = inb(data->sbase + WBCIR_REG_SP3_EIR);

 if (!(status & (WBCIR_IRQ_RX | WBCIR_IRQ_ERR))) {
  spin_unlock_irqrestore(&data->spinlock, flags);
  return IRQ_NONE;
 }


 if (status & WBCIR_IRQ_ERR) {
  data->irdata_error = 1;
  ir_raw_event_reset(data->dev);
 }

 if (!(status & WBCIR_IRQ_RX))
  goto out;

 if (!data->irdata_active) {
  data->irdata_active = 1;
  led_trigger_event(data->rxtrigger, LED_FULL);
 }


 insb(data->sbase + WBCIR_REG_SP3_RXDATA, &irdata[0], 8);

 for (i = 0; i < 8; i++) {
  u8 pulse;
  u32 duration;

  if (irdata[i] != 0xFF && irdata[i] != 0x00)
   disable = 0;

  if (data->irdata_error)
   continue;

  pulse = irdata[i] & 0x80 ? 0 : 1;
  duration = (irdata[i] & 0x7F) * 10000;

  if (data->ev.pulse != pulse) {
   if (data->ev.duration != 0) {
    ir_raw_event_store(data->dev, &data->ev);
    data->ev.duration = 0;
   }

   data->ev.pulse = pulse;
  }

  data->ev.duration += duration;
 }

 if (disable) {
  if (data->ev.duration != 0 && !data->irdata_error) {
   ir_raw_event_store(data->dev, &data->ev);
   data->ev.duration = 0;
  }


  outb(WBCIR_RX_DISABLE, data->sbase + WBCIR_REG_SP3_ASCR);


  while (inb(data->sbase + WBCIR_REG_SP3_LSR) & WBCIR_RX_AVAIL)
   inb(data->sbase + WBCIR_REG_SP3_RXDATA);

  ir_raw_event_reset(data->dev);
  data->irdata_error = 0;
  data->irdata_active = 0;
  led_trigger_event(data->rxtrigger, LED_OFF);
 }

 ir_raw_event_handle(data->dev);

out:
 spin_unlock_irqrestore(&data->spinlock, flags);
 return IRQ_HANDLED;
}
