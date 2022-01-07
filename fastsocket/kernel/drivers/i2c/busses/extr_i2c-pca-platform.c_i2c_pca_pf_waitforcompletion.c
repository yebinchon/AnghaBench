
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* read_byte ) (struct i2c_pca_pf_data*,int ) ;} ;
struct TYPE_3__ {unsigned long timeout; } ;
struct i2c_pca_pf_data {TYPE_2__ algo_data; TYPE_1__ adap; int wait; scalar_t__ irq; } ;


 int I2C_PCA_CON ;
 int I2C_PCA_CON_SI ;
 unsigned long jiffies ;
 int stub1 (struct i2c_pca_pf_data*,int ) ;
 int stub2 (struct i2c_pca_pf_data*,int ) ;
 long time_before (unsigned long,unsigned long) ;
 int udelay (int) ;
 long wait_event_timeout (int ,int,unsigned long) ;

__attribute__((used)) static int i2c_pca_pf_waitforcompletion(void *pd)
{
 struct i2c_pca_pf_data *i2c = pd;
 long ret = ~0;
 unsigned long timeout;

 if (i2c->irq) {
  ret = wait_event_timeout(i2c->wait,
   i2c->algo_data.read_byte(i2c, I2C_PCA_CON)
   & I2C_PCA_CON_SI, i2c->adap.timeout);
 } else {

  timeout = jiffies + i2c->adap.timeout;
  while (((i2c->algo_data.read_byte(i2c, I2C_PCA_CON)
    & I2C_PCA_CON_SI) == 0)
    && (ret = time_before(jiffies, timeout)))
   udelay(100);
 }

 return ret > 0;
}
