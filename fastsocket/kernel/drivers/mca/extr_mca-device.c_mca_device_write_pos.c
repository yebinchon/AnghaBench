
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct mca_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int (* mca_write_pos ) (struct mca_device*,int,unsigned char) ;} ;
struct mca_bus {TYPE_2__ f; } ;


 int stub1 (struct mca_device*,int,unsigned char) ;
 struct mca_bus* to_mca_bus (int ) ;

void mca_device_write_pos(struct mca_device *mca_dev, int reg,
     unsigned char byte)
{
 struct mca_bus *mca_bus = to_mca_bus(mca_dev->dev.parent);

 mca_bus->f.mca_write_pos(mca_dev, reg, byte);
}
