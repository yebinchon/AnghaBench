
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
typedef int fmode_t ;


 int current_device ;

__attribute__((used)) static int
z2_release(struct gendisk *disk, fmode_t mode)
{
    if ( current_device == -1 )
 return 0;





    return 0;
}
