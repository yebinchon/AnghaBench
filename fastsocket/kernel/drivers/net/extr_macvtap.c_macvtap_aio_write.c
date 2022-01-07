
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macvtap_queue {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct file {int f_flags; struct macvtap_queue* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int ENOLINK ;
 int O_NONBLOCK ;
 int iov_length (struct iovec const*,unsigned long) ;
 int macvtap_get_user (struct macvtap_queue*,int *,struct iovec const*,int ,unsigned long,int) ;

__attribute__((used)) static ssize_t macvtap_aio_write(struct kiocb *iocb, const struct iovec *iv,
     unsigned long count, loff_t pos)
{
 struct file *file = iocb->ki_filp;
 ssize_t result = -ENOLINK;
 struct macvtap_queue *q = file->private_data;

 result = macvtap_get_user(q, ((void*)0), iv, iov_length(iv, count), count,
      file->f_flags & O_NONBLOCK);
 return result;
}
