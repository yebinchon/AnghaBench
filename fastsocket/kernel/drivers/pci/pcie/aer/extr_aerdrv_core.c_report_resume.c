
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_error_handlers {int (* resume ) (struct pci_dev*) ;} ;
struct TYPE_3__ {int sem; } ;
struct pci_dev {TYPE_1__ dev; TYPE_2__* driver; int error_state; } ;
struct TYPE_4__ {struct pci_error_handlers* err_handler; } ;


 int down (int *) ;
 int pci_channel_io_normal ;
 int stub1 (struct pci_dev*) ;
 int up (int *) ;

__attribute__((used)) static int report_resume(struct pci_dev *dev, void *data)
{
 const struct pci_error_handlers *err_handler;

 down(&dev->dev.sem);
 dev->error_state = pci_channel_io_normal;

 if (!dev->driver ||
  !dev->driver->err_handler ||
  !dev->driver->err_handler->resume)
  goto out;

 err_handler = dev->driver->err_handler;
 err_handler->resume(dev);
out:
 up(&dev->dev.sem);
 return 0;
}
