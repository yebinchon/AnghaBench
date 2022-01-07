
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_error_handlers {int (* mmio_enabled ) (struct pci_dev*) ;} ;
struct TYPE_4__ {int sem; } ;
struct pci_dev {TYPE_2__ dev; TYPE_1__* driver; } ;
struct aer_broadcast_data {int result; } ;
typedef int pci_ers_result_t ;
struct TYPE_3__ {struct pci_error_handlers* err_handler; } ;


 int down (int *) ;
 int merge_result (int ,int ) ;
 int stub1 (struct pci_dev*) ;
 int up (int *) ;

__attribute__((used)) static int report_mmio_enabled(struct pci_dev *dev, void *data)
{
 pci_ers_result_t vote;
 const struct pci_error_handlers *err_handler;
 struct aer_broadcast_data *result_data;
 result_data = (struct aer_broadcast_data *) data;

 down(&dev->dev.sem);
 if (!dev->driver ||
  !dev->driver->err_handler ||
  !dev->driver->err_handler->mmio_enabled)
  goto out;

 err_handler = dev->driver->err_handler;
 vote = err_handler->mmio_enabled(dev);
 result_data->result = merge_result(result_data->result, vote);
out:
 up(&dev->dev.sem);
 return 0;
}
