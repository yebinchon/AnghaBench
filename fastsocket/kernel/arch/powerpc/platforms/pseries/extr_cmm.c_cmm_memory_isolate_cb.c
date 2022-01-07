
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 unsigned long MEM_ISOLATE_COUNT ;
 int NOTIFY_OK ;
 int cmm_count_pages (void*) ;
 int notifier_from_errno (int) ;

__attribute__((used)) static int cmm_memory_isolate_cb(struct notifier_block *self,
     unsigned long action, void *arg)
{
 int ret = 0;

 if (action == MEM_ISOLATE_COUNT)
  ret = cmm_count_pages(arg);

 if (ret)
  ret = notifier_from_errno(ret);
 else
  ret = NOTIFY_OK;

 return ret;
}
