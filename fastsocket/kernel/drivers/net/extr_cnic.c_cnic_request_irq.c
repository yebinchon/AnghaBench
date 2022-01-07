
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cnic_local {int cnic_irq_task; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {TYPE_1__* irq_arr; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {int vector; } ;


 int cnic_irq ;
 int request_irq (int ,int ,int ,char*,struct cnic_dev*) ;
 int tasklet_disable (int *) ;

__attribute__((used)) static int cnic_request_irq(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;
 int err;

 err = request_irq(ethdev->irq_arr[0].vector, cnic_irq, 0, "cnic", dev);
 if (err)
  tasklet_disable(&cp->cnic_irq_task);

 return err;
}
