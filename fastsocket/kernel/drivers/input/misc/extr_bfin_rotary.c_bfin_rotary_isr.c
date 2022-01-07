
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bfin_rot {int button_key; int input; } ;
typedef int irqreturn_t ;





 int IRQ_HANDLED ;

 int W1LCNT_ZERO ;
 int bfin_read_CNT_COUNTER () ;
 int bfin_read_CNT_STATUS () ;
 int bfin_write_CNT_COMMAND (int ) ;
 int bfin_write_CNT_STATUS (int) ;
 struct bfin_rot* platform_get_drvdata (struct platform_device*) ;
 int report_key_event (int ,int ) ;
 int report_rotary_event (struct bfin_rot*,int) ;

__attribute__((used)) static irqreturn_t bfin_rotary_isr(int irq, void *dev_id)
{
 struct platform_device *pdev = dev_id;
 struct bfin_rot *rotary = platform_get_drvdata(pdev);
 int delta;

 switch (bfin_read_CNT_STATUS()) {

 case 129:
  break;

 case 128:
 case 130:
  delta = bfin_read_CNT_COUNTER();
  if (delta)
   report_rotary_event(rotary, delta);
  break;

 case 131:
  report_key_event(rotary->input, rotary->button_key);
  break;

 default:
  break;
 }

 bfin_write_CNT_COMMAND(W1LCNT_ZERO);
 bfin_write_CNT_STATUS(-1);

 return IRQ_HANDLED;
}
