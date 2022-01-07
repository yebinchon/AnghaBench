
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {scalar_t__ removable; int access; } ;
struct gendisk {struct pd_unit* private_data; } ;
typedef int fmode_t ;


 int pd_door_unlock ;
 int pd_special_command (struct pd_unit*,int ) ;

__attribute__((used)) static int pd_release(struct gendisk *p, fmode_t mode)
{
 struct pd_unit *disk = p->private_data;

 if (!--disk->access && disk->removable)
  pd_special_command(disk, pd_door_unlock);

 return 0;
}
