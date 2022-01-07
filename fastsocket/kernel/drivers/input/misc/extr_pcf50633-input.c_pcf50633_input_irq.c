
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_input {int input_dev; int pcf; } ;


 int KEY_POWER ;
 int PCF50633_IRQ_ONKEYF ;
 int PCF50633_IRQ_ONKEYR ;
 int PCF50633_OOCSTAT_ONKEY ;
 int PCF50633_REG_OOCSTAT ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int pcf50633_reg_read (int ,int ) ;

__attribute__((used)) static void
pcf50633_input_irq(int irq, void *data)
{
 struct pcf50633_input *input;
 int onkey_released;

 input = data;


 onkey_released = pcf50633_reg_read(input->pcf, PCF50633_REG_OOCSTAT)
      & PCF50633_OOCSTAT_ONKEY;

 if (irq == PCF50633_IRQ_ONKEYF && !onkey_released)
  input_report_key(input->input_dev, KEY_POWER, 1);
 else if (irq == PCF50633_IRQ_ONKEYR && onkey_released)
  input_report_key(input->input_dev, KEY_POWER, 0);

 input_sync(input->input_dev);
}
