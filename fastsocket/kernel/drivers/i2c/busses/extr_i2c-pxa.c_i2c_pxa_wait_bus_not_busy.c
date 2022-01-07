
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_i2c {int dummy; } ;


 int DEF_TIMEOUT ;
 int I2C_RETRY ;
 int ISR_IBB ;
 int ISR_SAD ;
 int ISR_UB ;
 int _ISR (struct pxa_i2c*) ;
 int msleep (int) ;
 int readl (int ) ;
 int show_state (struct pxa_i2c*) ;

__attribute__((used)) static int i2c_pxa_wait_bus_not_busy(struct pxa_i2c *i2c)
{
 int timeout = DEF_TIMEOUT;

 while (timeout-- && readl(_ISR(i2c)) & (ISR_IBB | ISR_UB)) {
  if ((readl(_ISR(i2c)) & ISR_SAD) != 0)
   timeout += 4;

  msleep(2);
  show_state(i2c);
 }

 if (timeout < 0)
  show_state(i2c);

 return timeout < 0 ? I2C_RETRY : 0;
}
