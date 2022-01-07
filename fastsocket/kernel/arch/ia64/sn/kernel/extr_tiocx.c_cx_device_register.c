
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hubdev_info {int dummy; } ;
struct TYPE_7__ {int release; int * bus; int * parent; } ;
struct TYPE_6__ {int part_num; int mfg_num; int nasid; } ;
struct cx_dev {int bt; TYPE_2__ dev; TYPE_1__ cx_id; struct hubdev_info* hubdev; } ;
typedef int nasid_t ;


 int DBG (char*,struct cx_dev*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_cxdev_control ;
 int dev_set_name (TYPE_2__*,char*,int ) ;
 int device_create_file (TYPE_2__*,int *) ;
 int device_register (TYPE_2__*) ;
 int get_device (TYPE_2__*) ;
 struct cx_dev* kzalloc (int,int ) ;
 int tiocx_bus_release ;
 int tiocx_bus_type ;

int
cx_device_register(nasid_t nasid, int part_num, int mfg_num,
     struct hubdev_info *hubdev, int bt)
{
 struct cx_dev *cx_dev;

 cx_dev = kzalloc(sizeof(struct cx_dev), GFP_KERNEL);
 DBG("cx_dev= 0x%p\n", cx_dev);
 if (cx_dev == ((void*)0))
  return -ENOMEM;

 cx_dev->cx_id.part_num = part_num;
 cx_dev->cx_id.mfg_num = mfg_num;
 cx_dev->cx_id.nasid = nasid;
 cx_dev->hubdev = hubdev;
 cx_dev->bt = bt;

 cx_dev->dev.parent = ((void*)0);
 cx_dev->dev.bus = &tiocx_bus_type;
 cx_dev->dev.release = tiocx_bus_release;
 dev_set_name(&cx_dev->dev, "%d", cx_dev->cx_id.nasid);
 device_register(&cx_dev->dev);
 get_device(&cx_dev->dev);

 device_create_file(&cx_dev->dev, &dev_attr_cxdev_control);

 return 0;
}
