
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_device {TYPE_1__* mtd; } ;
struct TYPE_2__ {int (* sync ) (TYPE_1__*) ;} ;


 int ENODEV ;
 int stub1 (TYPE_1__*) ;
 struct ubi_device* ubi_get_device (int) ;
 int ubi_put_device (struct ubi_device*) ;

int ubi_sync(int ubi_num)
{
 struct ubi_device *ubi;

 ubi = ubi_get_device(ubi_num);
 if (!ubi)
  return -ENODEV;

 if (ubi->mtd->sync)
  ubi->mtd->sync(ubi->mtd);

 ubi_put_device(ubi);
 return 0;
}
