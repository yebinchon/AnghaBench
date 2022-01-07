
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int done; int mutex; } ;
struct TYPE_5__ {TYPE_1__ ioctl_cmds; } ;
typedef TYPE_2__ MPT_ADAPTER ;


 int init_completion (int *) ;
 int mutex_init (int *) ;
 TYPE_2__* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static int
mptctl_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 MPT_ADAPTER *ioc = pci_get_drvdata(pdev);

 mutex_init(&ioc->ioctl_cmds.mutex);
 init_completion(&ioc->ioctl_cmds.done);
 return 0;
}
