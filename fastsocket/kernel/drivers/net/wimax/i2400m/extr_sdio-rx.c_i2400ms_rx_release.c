
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;
struct i2400m {int rx_lock; } ;
struct i2400ms {int bm_wfa_wq; int bm_ack_size; struct i2400m i2400m; struct sdio_func* func; } ;


 int EINTR ;
 int I2400MS_INTR_ENABLE_ADDR ;
 int d_fnend (int,struct device*,char*,struct i2400ms*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400ms*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 int sdio_writeb (struct sdio_func*,int ,int ,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;

void i2400ms_rx_release(struct i2400ms *i2400ms)
{
 int result;
 struct sdio_func *func = i2400ms->func;
 struct device *dev = &func->dev;
 struct i2400m *i2400m = &i2400ms->i2400m;

 d_fnstart(5, dev, "(i2400ms %p)\n", i2400ms);
 spin_lock(&i2400m->rx_lock);
 i2400ms->bm_ack_size = -EINTR;
 spin_unlock(&i2400m->rx_lock);
 wake_up_all(&i2400ms->bm_wfa_wq);
 sdio_claim_host(func);
 sdio_writeb(func, 0, I2400MS_INTR_ENABLE_ADDR, &result);
 sdio_release_irq(func);
 sdio_release_host(func);
 d_fnend(5, dev, "(i2400ms %p) = %d\n", i2400ms, result);
}
