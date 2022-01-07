
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long timeout; } ;


 int I2C_PCA_CON ;
 int I2C_PCA_CON_SI ;
 int irq ;
 unsigned long jiffies ;
 TYPE_1__ pca_isa_ops ;
 int pca_isa_readbyte (void*,int ) ;
 int pca_wait ;
 long time_before (unsigned long,unsigned long) ;
 int udelay (int) ;
 long wait_event_timeout (int ,int,unsigned long) ;

__attribute__((used)) static int pca_isa_waitforcompletion(void *pd)
{
 long ret = ~0;
 unsigned long timeout;

 if (irq > -1) {
  ret = wait_event_timeout(pca_wait,
    pca_isa_readbyte(pd, I2C_PCA_CON)
    & I2C_PCA_CON_SI, pca_isa_ops.timeout);
 } else {

  timeout = jiffies + pca_isa_ops.timeout;
  while (((pca_isa_readbyte(pd, I2C_PCA_CON)
    & I2C_PCA_CON_SI) == 0)
    && (ret = time_before(jiffies, timeout)))
   udelay(100);
 }
 return ret > 0;
}
