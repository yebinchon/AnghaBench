
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uverbs_file {int dummy; } ;
struct ib_uverbs_event_file {int is_async; scalar_t__ is_closed; int * async_queue; struct ib_uverbs_file* uverbs_file; int poll_wait; int event_list; int lock; int ref; } ;
struct file {int dummy; } ;


 int ENFILE ;
 int ENOMEM ;
 struct file* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int O_RDONLY ;
 struct file* anon_inode_getfile (char*,int *,struct ib_uverbs_event_file*,int ) ;
 int get_unused_fd () ;
 int init_waitqueue_head (int *) ;
 int kfree (struct ib_uverbs_event_file*) ;
 struct ib_uverbs_event_file* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int put_unused_fd (int) ;
 int spin_lock_init (int *) ;
 int uverbs_event_fops ;

struct file *ib_uverbs_alloc_event_file(struct ib_uverbs_file *uverbs_file,
     int is_async, int *fd)
{
 struct ib_uverbs_event_file *ev_file;
 struct file *filp;
 int ret;

 ev_file = kmalloc(sizeof *ev_file, GFP_KERNEL);
 if (!ev_file)
  return ERR_PTR(-ENOMEM);

 kref_init(&ev_file->ref);
 spin_lock_init(&ev_file->lock);
 INIT_LIST_HEAD(&ev_file->event_list);
 init_waitqueue_head(&ev_file->poll_wait);
 ev_file->uverbs_file = uverbs_file;
 ev_file->async_queue = ((void*)0);
 ev_file->is_async = is_async;
 ev_file->is_closed = 0;

 *fd = get_unused_fd();
 if (*fd < 0) {
  ret = *fd;
  goto err;
 }

 filp = anon_inode_getfile("[uverbs-event]", &uverbs_event_fops,
      ev_file, O_RDONLY);
 if (!filp) {
  ret = -ENFILE;
  goto err_fd;
 }

 return filp;

err_fd:
 put_unused_fd(*fd);

err:
 kfree(ev_file);
 return ERR_PTR(ret);
}
