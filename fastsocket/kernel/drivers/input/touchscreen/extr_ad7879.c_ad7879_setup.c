
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7879 {int cmd_crtl3; int cmd_crtl2; int gpio_init; int cmd_crtl1; int bus; int pen_down_acc_interval; int acquisition_time; int first_conversion_delay; int median; int averaging; } ;


 int AD7879_ACQ (int ) ;
 int AD7879_AUXVBATMASK_BIT ;
 int AD7879_AVG (int ) ;
 int AD7879_DFR ;
 int AD7879_FCD (int ) ;
 int AD7879_GPIOALERTMASK_BIT ;
 int AD7879_MFS (int ) ;
 int AD7879_MODE_INT ;
 int AD7879_MODE_SEQ1 ;
 int AD7879_PM (int ) ;
 int AD7879_PM_DYN ;
 int AD7879_REG_CTRL1 ;
 int AD7879_REG_CTRL2 ;
 int AD7879_REG_CTRL3 ;
 int AD7879_TEMPMASK_BIT ;
 int AD7879_TMR (int ) ;
 int AD7879_XPLUS_BIT ;
 int AD7879_YPLUS_BIT ;
 int AD7879_Z1_BIT ;
 int AD7879_Z2_BIT ;
 int ad7879_write (int ,int ,int) ;

__attribute__((used)) static void ad7879_setup(struct ad7879 *ts)
{
 ts->cmd_crtl3 = AD7879_YPLUS_BIT |
   AD7879_XPLUS_BIT |
   AD7879_Z2_BIT |
   AD7879_Z1_BIT |
   AD7879_TEMPMASK_BIT |
   AD7879_AUXVBATMASK_BIT |
   AD7879_GPIOALERTMASK_BIT;

 ts->cmd_crtl2 = AD7879_PM(AD7879_PM_DYN) | AD7879_DFR |
   AD7879_AVG(ts->averaging) |
   AD7879_MFS(ts->median) |
   AD7879_FCD(ts->first_conversion_delay) |
   ts->gpio_init;

 ts->cmd_crtl1 = AD7879_MODE_INT | AD7879_MODE_SEQ1 |
   AD7879_ACQ(ts->acquisition_time) |
   AD7879_TMR(ts->pen_down_acc_interval);

 ad7879_write(ts->bus, AD7879_REG_CTRL2, ts->cmd_crtl2);
 ad7879_write(ts->bus, AD7879_REG_CTRL3, ts->cmd_crtl3);
 ad7879_write(ts->bus, AD7879_REG_CTRL1, ts->cmd_crtl1);
}
