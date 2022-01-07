
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recurse_struct {int obj; scalar_t__ (* fn ) (struct device*,int ) ;} ;
struct device {int dummy; } ;


 int device_for_each_child (struct device*,struct recurse_struct*,int (*) (struct device*,void*)) ;
 scalar_t__ stub1 (struct device*,int ) ;

__attribute__((used)) static int descend_children(struct device * dev, void * data)
{
 struct recurse_struct * recurse_data = (struct recurse_struct *)data;

 if (recurse_data->fn(dev, recurse_data->obj))
  return 1;
 else
  return device_for_each_child(dev, recurse_data, descend_children);
}
