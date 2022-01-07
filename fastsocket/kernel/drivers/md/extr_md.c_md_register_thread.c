
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;
struct md_thread {void (* run ) (struct md_thread*) ;int tsk; struct mddev* mddev; int timeout; int wqueue; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_SCHEDULE_TIMEOUT ;
 int init_waitqueue_head (int *) ;
 int kfree (struct md_thread*) ;
 int kthread_run (int ,struct md_thread*,char*,int ,char const*) ;
 struct md_thread* kzalloc (int,int ) ;
 int md_thread ;
 int mdname (struct mddev*) ;

struct md_thread *md_register_thread(void (*run) (struct md_thread *),
  struct mddev *mddev, const char *name)
{
 struct md_thread *thread;

 thread = kzalloc(sizeof(struct md_thread), GFP_KERNEL);
 if (!thread)
  return ((void*)0);

 init_waitqueue_head(&thread->wqueue);

 thread->run = run;
 thread->mddev = mddev;
 thread->timeout = MAX_SCHEDULE_TIMEOUT;
 thread->tsk = kthread_run(md_thread, thread,
      "%s_%s",
      mdname(thread->mddev),
      name);
 if (IS_ERR(thread->tsk)) {
  kfree(thread);
  return ((void*)0);
 }
 return thread;
}
