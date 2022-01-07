
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_proc {int dummy; } ;
typedef int off_t ;


 int PAGE_SIZE ;
 int binder_debug_no_lock ;
 int binder_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 char* print_binder_proc (char*,char*,struct binder_proc*,int) ;
 int snprintf (char*,int,char*) ;

__attribute__((used)) static int binder_read_proc_proc(char *page, char **start, off_t off,
     int count, int *eof, void *data)
{
 struct binder_proc *proc = data;
 int len = 0;
 char *p = page;
 int do_lock = !binder_debug_no_lock;

 if (off)
  return 0;

 if (do_lock)
  mutex_lock(&binder_lock);
 p += snprintf(p, PAGE_SIZE, "binder proc state:\n");
 p = print_binder_proc(p, page + PAGE_SIZE, proc, 1);
 if (do_lock)
  mutex_unlock(&binder_lock);

 if (p > page + PAGE_SIZE)
  p = page + PAGE_SIZE;
 *start = page + off;

 len = p - page;
 if (len > off)
  len -= off;
 else
  len = 0;

 return len < count ? len : count;
}
