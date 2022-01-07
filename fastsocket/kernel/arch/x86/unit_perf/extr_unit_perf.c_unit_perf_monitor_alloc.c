
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct unit_perf_monitor {scalar_t__ list; scalar_t__ list_lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (scalar_t__) ;
 scalar_t__ UNIT_PERF_SLOT_CNT ;
 struct unit_perf_monitor* kmalloc (int,int ) ;
 int memset (struct unit_perf_monitor*,int ,int) ;
 int spin_lock_init (scalar_t__) ;

__attribute__((used)) static struct unit_perf_monitor * unit_perf_monitor_alloc(void)
{
 struct unit_perf_monitor *monitor;
 u32 i;

 monitor = kmalloc(sizeof(*monitor), GFP_KERNEL);
 if (!monitor) {
  return ((void*)0);
 }
 memset(monitor, 0, sizeof(*monitor));

 for (i = 0; i < UNIT_PERF_SLOT_CNT; ++i) {
  INIT_LIST_HEAD(monitor->list+i);
  spin_lock_init(monitor->list_lock+i);
 }

 return monitor;
}
