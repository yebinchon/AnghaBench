
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int add_timer (int *) ;
 int del_timer (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvc_mutex ;
 int scroll_dir ;
 int scroll_interval ;
 int simple_strtol (char const*,int *,int) ;
 int timer ;

__attribute__((used)) static int pvc_proc_write_scroll(struct file *file, const char *buffer,
      unsigned long count, void *data)
{
 int origcount = count;
 int cmd = simple_strtol(buffer, ((void*)0), 10);

 mutex_lock(&pvc_mutex);
 if (scroll_interval != 0)
  del_timer(&timer);

 if (cmd == 0) {
  scroll_dir = 0;
  scroll_interval = 0;
 } else {
  if (cmd < 0) {
   scroll_dir = -1;
   scroll_interval = -cmd;
  } else {
   scroll_dir = 1;
   scroll_interval = cmd;
  }
  add_timer(&timer);
 }
 mutex_unlock(&pvc_mutex);

 return origcount;
}
