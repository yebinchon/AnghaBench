
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct subchannel {int schid; } ;
struct device {int dummy; } ;


 int schid_equal (int *,struct subchannel_id*) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static int
check_subchannel(struct device * dev, void * data)
{
 struct subchannel *sch;
 struct subchannel_id *schid = data;

 sch = to_subchannel(dev);
 return schid_equal(&sch->schid, schid);
}
