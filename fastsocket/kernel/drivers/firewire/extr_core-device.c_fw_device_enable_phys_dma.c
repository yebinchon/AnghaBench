
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_device {int generation; int node_id; TYPE_2__* card; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* enable_phys_dma ) (TYPE_2__*,int ,int) ;} ;


 int smp_rmb () ;
 int stub1 (TYPE_2__*,int ,int) ;

int fw_device_enable_phys_dma(struct fw_device *device)
{
 int generation = device->generation;


 smp_rmb();

 return device->card->driver->enable_phys_dma(device->card,
           device->node_id,
           generation);
}
