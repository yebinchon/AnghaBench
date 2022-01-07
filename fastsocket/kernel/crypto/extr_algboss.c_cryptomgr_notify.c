
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int NOTIFY_DONE ;
 int cryptomgr_schedule_probe (void*) ;
 int cryptomgr_schedule_test (void*) ;

__attribute__((used)) static int cryptomgr_notify(struct notifier_block *this, unsigned long msg,
       void *data)
{
 switch (msg) {
 case 128:
  return cryptomgr_schedule_probe(data);
 case 129:
  return cryptomgr_schedule_test(data);
 }

 return NOTIFY_DONE;
}
