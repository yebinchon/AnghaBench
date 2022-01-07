
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct mca_device {unsigned char* pos; TYPE_1__ dev; } ;
struct TYPE_4__ {unsigned char (* mca_read_pos ) (struct mca_device*,int) ;} ;
struct mca_bus {TYPE_2__ f; } ;


 unsigned char stub1 (struct mca_device*,int) ;
 struct mca_bus* to_mca_bus (int ) ;

unsigned char mca_device_read_pos(struct mca_device *mca_dev, int reg)
{
 struct mca_bus *mca_bus = to_mca_bus(mca_dev->dev.parent);

 return mca_bus->f.mca_read_pos(mca_dev, reg);

 return mca_dev->pos[reg];
}
