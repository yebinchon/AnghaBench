
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drv_dev_and_id {int id; int dev; TYPE_1__* drv; } ;
struct TYPE_2__ {long (* probe ) (int ,int ) ;} ;


 long stub1 (int ,int ) ;

__attribute__((used)) static long local_pci_probe(void *_ddi)
{
 struct drv_dev_and_id *ddi = _ddi;

 return ddi->drv->probe(ddi->dev, ddi->id);
}
