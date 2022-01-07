
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;
struct i2400m {int rx_lock; } ;
struct i2400ms {int bm_wait_result; int bm_wfa_wq; struct i2400m i2400m; struct sdio_func* func; } ;


 int EINPROGRESS ;
 int I2400MS_INTR_ENABLE_ADDR ;
 int d_fnend (int,struct device*,char*,struct i2400ms*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400ms*) ;
 int dev_err (struct device*,char*,int) ;
 int i2400ms_irq ;
 int init_waitqueue_head (int *) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_claim_irq (struct sdio_func*,int ) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 int sdio_writeb (struct sdio_func*,int,int ,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int i2400ms_rx_setup(struct i2400ms *i2400ms)
{
 int result;
 struct sdio_func *func = i2400ms->func;
 struct device *dev = &func->dev;
 struct i2400m *i2400m = &i2400ms->i2400m;

 d_fnstart(5, dev, "(i2400ms %p)\n", i2400ms);

 init_waitqueue_head(&i2400ms->bm_wfa_wq);
 spin_lock(&i2400m->rx_lock);
 i2400ms->bm_wait_result = -EINPROGRESS;
 spin_unlock(&i2400m->rx_lock);

 sdio_claim_host(func);
 result = sdio_claim_irq(func, i2400ms_irq);
 if (result < 0) {
  dev_err(dev, "Cannot claim IRQ: %d\n", result);
  goto error_irq_claim;
 }
 result = 0;
 sdio_writeb(func, 1, I2400MS_INTR_ENABLE_ADDR, &result);
 if (result < 0) {
  sdio_release_irq(func);
  dev_err(dev, "Failed to enable interrupts %d\n", result);
 }
error_irq_claim:
 sdio_release_host(func);
 d_fnend(5, dev, "(i2400ms %p) = %d\n", i2400ms, result);
 return result;
}
