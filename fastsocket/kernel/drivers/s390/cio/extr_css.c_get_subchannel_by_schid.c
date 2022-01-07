
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct subchannel {int dummy; } ;
struct device {int dummy; } ;


 struct device* bus_find_device (int *,int *,struct subchannel_id*,int ) ;
 int check_subchannel ;
 int css_bus_type ;
 struct subchannel* to_subchannel (struct device*) ;

struct subchannel *
get_subchannel_by_schid(struct subchannel_id schid)
{
 struct device *dev;

 dev = bus_find_device(&css_bus_type, ((void*)0),
         &schid, check_subchannel);

 return dev ? to_subchannel(dev) : ((void*)0);
}
