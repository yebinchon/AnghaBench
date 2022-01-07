
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_4__ {scalar_t__ layout; } ;
struct TYPE_3__ {scalar_t__ main_iobase; } ;


 scalar_t__ ADC_DELAY_INTERVAL_LOWER_REG ;
 scalar_t__ ADC_DELAY_INTERVAL_UPPER_REG ;
 scalar_t__ ADC_SAMPLE_INTERVAL_LOWER_REG ;
 scalar_t__ ADC_SAMPLE_INTERVAL_UPPER_REG ;
 int DEBUG_PRINT (char*,int) ;
 scalar_t__ LAYOUT_4020 ;
 int ai_convert_counter_4020 (struct comedi_device*,struct comedi_cmd*) ;
 int ai_convert_counter_6xxx (struct comedi_device*,struct comedi_cmd*) ;
 int ai_scan_counter_6xxx (struct comedi_device*,struct comedi_cmd*) ;
 TYPE_2__* board (struct comedi_device*) ;
 int check_adc_timing (struct comedi_device*,struct comedi_cmd*) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int select_master_clock (struct comedi_device*,struct comedi_cmd*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void set_ai_pacing(struct comedi_device *dev, struct comedi_cmd *cmd)
{
 uint32_t convert_counter = 0, scan_counter = 0;

 check_adc_timing(dev, cmd);

 select_master_clock(dev, cmd);

 if (board(dev)->layout == LAYOUT_4020) {
  convert_counter = ai_convert_counter_4020(dev, cmd);
 } else {
  convert_counter = ai_convert_counter_6xxx(dev, cmd);
  scan_counter = ai_scan_counter_6xxx(dev, cmd);
 }


 writew(convert_counter & 0xffff,
        priv(dev)->main_iobase + ADC_SAMPLE_INTERVAL_LOWER_REG);
 DEBUG_PRINT("convert counter 0x%x\n", convert_counter);

 writew((convert_counter >> 16) & 0xff,
        priv(dev)->main_iobase + ADC_SAMPLE_INTERVAL_UPPER_REG);

 writew(scan_counter & 0xffff,
        priv(dev)->main_iobase + ADC_DELAY_INTERVAL_LOWER_REG);

 writew((scan_counter >> 16) & 0xff,
        priv(dev)->main_iobase + ADC_DELAY_INTERVAL_UPPER_REG);
 DEBUG_PRINT("scan counter 0x%x\n", scan_counter);
}
