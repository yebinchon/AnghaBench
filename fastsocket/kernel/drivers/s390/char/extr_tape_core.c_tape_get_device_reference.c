
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int ref_count; } ;


 int DBF_EVENT (int,char*,struct tape_device*,int ) ;
 int atomic_inc_return (int *) ;

struct tape_device *
tape_get_device_reference(struct tape_device *device)
{
 DBF_EVENT(4, "tape_get_device_reference(%p) = %i\n", device,
  atomic_inc_return(&device->ref_count));

 return device;
}
