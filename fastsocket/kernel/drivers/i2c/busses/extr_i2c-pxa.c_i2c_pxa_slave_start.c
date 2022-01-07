
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct pxa_i2c {TYPE_1__ adap; } ;


 int ICR_ACKNAK ;
 int ICR_SCLE ;
 int ICR_START ;
 int ICR_STOP ;
 int ICR_TB ;
 int _IBMR (struct pxa_i2c*) ;
 int _ICR (struct pxa_i2c*) ;
 int dev_err (int *,char*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void i2c_pxa_slave_start(struct pxa_i2c *i2c, u32 isr)
{
 int timeout;






 writel(readl(_ICR(i2c)) & ~(ICR_START|ICR_STOP), _ICR(i2c));
 writel(readl(_ICR(i2c)) | ICR_TB | ICR_ACKNAK, _ICR(i2c));

 timeout = 0x10000;

 while (1) {
  if ((readl(_IBMR(i2c)) & 2) == 2)
   break;

  timeout--;

  if (timeout <= 0) {
   dev_err(&i2c->adap.dev, "timeout waiting for SCL high\n");
   break;
  }
 }

 writel(readl(_ICR(i2c)) & ~ICR_SCLE, _ICR(i2c));
}
