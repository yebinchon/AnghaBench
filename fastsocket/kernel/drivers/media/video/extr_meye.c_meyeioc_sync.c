
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int f_flags; } ;
struct TYPE_4__ {int lock; TYPE_1__* grab_buffer; int doneq; int proc_list; } ;
struct TYPE_3__ {int state; int size; } ;


 int EAGAIN ;
 int EINTR ;
 int EINVAL ;



 int O_NONBLOCK ;
 int gbuffers ;
 int kfifo_get (int ,unsigned char*,int) ;
 TYPE_2__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int meyeioc_sync(struct file *file, void *fh, int *i)
{
 int unused;

 if (*i < 0 || *i >= gbuffers)
  return -EINVAL;

 mutex_lock(&meye.lock);
 switch (meye.grab_buffer[*i].state) {

 case 129:
  mutex_unlock(&meye.lock);
  return -EINVAL;
 case 128:
  if (file->f_flags & O_NONBLOCK) {
   mutex_unlock(&meye.lock);
   return -EAGAIN;
  }
  if (wait_event_interruptible(meye.proc_list,
   (meye.grab_buffer[*i].state != 128))) {
   mutex_unlock(&meye.lock);
   return -EINTR;
  }

 case 130:
  meye.grab_buffer[*i].state = 129;
  kfifo_get(meye.doneq, (unsigned char *)&unused, sizeof(int));
 }
 *i = meye.grab_buffer[*i].size;
 mutex_unlock(&meye.lock);
 return 0;
}
