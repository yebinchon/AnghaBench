
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uverbs_event_file {int ref; scalar_t__ is_async; } ;
struct file {struct ib_uverbs_event_file* private_data; int * f_op; } ;


 struct file* fget (int) ;
 int fput (struct file*) ;
 int kref_get (int *) ;
 int uverbs_event_fops ;

struct ib_uverbs_event_file *ib_uverbs_lookup_comp_file(int fd)
{
 struct ib_uverbs_event_file *ev_file = ((void*)0);
 struct file *filp;

 filp = fget(fd);
 if (!filp)
  return ((void*)0);

 if (filp->f_op != &uverbs_event_fops)
  goto out;

 ev_file = filp->private_data;
 if (ev_file->is_async) {
  ev_file = ((void*)0);
  goto out;
 }

 kref_get(&ev_file->ref);

out:
 fput(filp);
 return ev_file;
}
