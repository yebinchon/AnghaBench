
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int dummy; } ;
struct gendisk {struct tape_device* private_data; } ;
typedef int fmode_t ;


 int TS_IN_USE ;
 int tape_put_device (struct tape_device*) ;
 int tape_release (struct tape_device*) ;
 int tape_state_set (struct tape_device*,int ) ;

__attribute__((used)) static int
tapeblock_release(struct gendisk *disk, fmode_t mode)
{
 struct tape_device *device = disk->private_data;

 tape_state_set(device, TS_IN_USE);
 tape_release(device);
 tape_put_device(device);

 return 0;
}
