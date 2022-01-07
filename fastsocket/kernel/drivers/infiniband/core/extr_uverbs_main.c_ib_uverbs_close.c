
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ib_uverbs_file {int ref; TYPE_1__* async_file; int ucontext; } ;
struct file {struct ib_uverbs_file* private_data; } ;
struct TYPE_2__ {int ref; } ;


 int ib_uverbs_cleanup_ucontext (struct ib_uverbs_file*,int ) ;
 int ib_uverbs_release_event_file ;
 int ib_uverbs_release_file ;
 int kref_put (int *,int ) ;

__attribute__((used)) static int ib_uverbs_close(struct inode *inode, struct file *filp)
{
 struct ib_uverbs_file *file = filp->private_data;

 ib_uverbs_cleanup_ucontext(file, file->ucontext);

 if (file->async_file)
  kref_put(&file->async_file->ref, ib_uverbs_release_event_file);

 kref_put(&file->ref, ib_uverbs_release_file);

 return 0;
}
