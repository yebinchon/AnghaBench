
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct inode {int dummy; } ;
struct file_info {int addr_list; int wait_complete; int reqlists_lock; int req_complete; int req_pending; int state; int state_mutex; int list; scalar_t__ notification; } ;
struct file {struct file_info* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ RAW1394_NOTIFY_ON ;
 int init_waitqueue_head (int *) ;
 struct file_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int opened ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int raw1394_open(struct inode *inode, struct file *file)
{
 struct file_info *fi;

 fi = kzalloc(sizeof(*fi), GFP_KERNEL);
 if (!fi)
  return -ENOMEM;

 fi->notification = (u8) RAW1394_NOTIFY_ON;

 INIT_LIST_HEAD(&fi->list);
 mutex_init(&fi->state_mutex);
 fi->state = opened;
 INIT_LIST_HEAD(&fi->req_pending);
 INIT_LIST_HEAD(&fi->req_complete);
 spin_lock_init(&fi->reqlists_lock);
 init_waitqueue_head(&fi->wait_complete);
 INIT_LIST_HEAD(&fi->addr_list);

 file->private_data = fi;

 return 0;
}
