
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mfg_num; int part_num; int nasid; } ;
struct cx_dev {int bt; int hubdev; TYPE_1__ cx_id; } ;


 int cx_device_register (int ,int ,int ,int ,int ) ;
 int cx_device_unregister (struct cx_dev*) ;

__attribute__((used)) static int cx_device_reload(struct cx_dev *cx_dev)
{
 cx_device_unregister(cx_dev);
 return cx_device_register(cx_dev->cx_id.nasid, cx_dev->cx_id.part_num,
      cx_dev->cx_id.mfg_num, cx_dev->hubdev,
      cx_dev->bt);
}
