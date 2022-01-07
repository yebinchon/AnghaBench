
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int FIELD8 (int) ;
 int msleep (int) ;
 int rt2800_rfcsr_read (struct rt2x00_dev*,unsigned int const,int *) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,unsigned int const,int ) ;
 int rt2x00_set_field8 (int *,int ,int) ;

__attribute__((used)) static void rt2800_rf_init_calibration(struct rt2x00_dev *rt2x00dev,
           const unsigned int rf_reg)
{
 u8 rfcsr;

 rt2800_rfcsr_read(rt2x00dev, rf_reg, &rfcsr);
 rt2x00_set_field8(&rfcsr, FIELD8(0x80), 1);
 rt2800_rfcsr_write(rt2x00dev, rf_reg, rfcsr);
 msleep(1);
 rt2x00_set_field8(&rfcsr, FIELD8(0x80), 0);
 rt2800_rfcsr_write(rt2x00dev, rf_reg, rfcsr);
}
