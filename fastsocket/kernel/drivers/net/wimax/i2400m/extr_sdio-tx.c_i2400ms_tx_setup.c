
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* name; } ;
struct i2400m {TYPE_2__ wimax_dev; } ;
struct i2400ms {int * tx_workqueue; int tx_wq_name; int tx_worker; struct i2400m i2400m; TYPE_1__* func; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int * create_singlethread_workqueue (int ) ;
 int d_fnend (int,struct device*,char*,struct i2400ms*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400ms*) ;
 int dev_err (struct device*,char*) ;
 int i2400ms_tx_submit ;
 int snprintf (int ,int,char*,char*) ;

int i2400ms_tx_setup(struct i2400ms *i2400ms)
{
 int result;
 struct device *dev = &i2400ms->func->dev;
 struct i2400m *i2400m = &i2400ms->i2400m;

 d_fnstart(5, dev, "(i2400ms %p)\n", i2400ms);

 INIT_WORK(&i2400ms->tx_worker, i2400ms_tx_submit);
 snprintf(i2400ms->tx_wq_name, sizeof(i2400ms->tx_wq_name),
   "%s-tx", i2400m->wimax_dev.name);
 i2400ms->tx_workqueue =
  create_singlethread_workqueue(i2400ms->tx_wq_name);
 if (((void*)0) == i2400ms->tx_workqueue) {
  dev_err(dev, "TX: failed to create workqueue\n");
  result = -ENOMEM;
 } else
  result = 0;
 d_fnend(5, dev, "(i2400ms %p) = %d\n", i2400ms, result);
 return result;
}
