
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macvtap_queue {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct macvtap_queue* private_data; } ;


 int macvtap_put_queue (struct macvtap_queue*) ;

__attribute__((used)) static int macvtap_release(struct inode *inode, struct file *file)
{
 struct macvtap_queue *q = file->private_data;
 macvtap_put_queue(q);
 return 0;
}
