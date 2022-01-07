
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mca_find_adapter_info {int slot; int id; TYPE_1__* mca_dev; int member_0; } ;
struct TYPE_2__ {scalar_t__ status; int slot; int driver_loaded; } ;


 scalar_t__ MCA_ADAPTER_DISABLED ;
 int MCA_NOTFOUND ;
 int MCA_bus ;
 int bus_for_each_dev (int *,int *,struct mca_find_adapter_info*,int ) ;
 int mca_bus_type ;
 int mca_find_adapter_callback ;

int mca_find_unused_adapter(int id, int start)
{
 struct mca_find_adapter_info info = { 0 };

 if (!MCA_bus || id == 0xffff)
  return MCA_NOTFOUND;

 info.slot = start;
 info.id = id;
 info.mca_dev = ((void*)0);

 for(;;) {
  bus_for_each_dev(&mca_bus_type, ((void*)0), &info, mca_find_adapter_callback);

  if(info.mca_dev == ((void*)0))
   return MCA_NOTFOUND;

  if(info.mca_dev->status != MCA_ADAPTER_DISABLED
     && !info.mca_dev->driver_loaded)
   break;





  info.slot = info.mca_dev->slot + 1;
  info.mca_dev = ((void*)0);
 }

 return info.mca_dev->slot;
}
