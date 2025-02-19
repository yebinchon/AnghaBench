
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_audit_buf {int major; int minor; int icanon; scalar_t__ valid; int mutex; int count; void* data; } ;


 int GFP_KERNEL ;
 int N_TTY_BUF_SIZE ;
 int atomic_set (int *,int) ;
 int kfree (struct tty_audit_buf*) ;
 void* kmalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct tty_audit_buf *tty_audit_buf_alloc(int major, int minor,
       int icanon)
{
 struct tty_audit_buf *buf;

 buf = kmalloc(sizeof(*buf), GFP_KERNEL);
 if (!buf)
  goto err;
 buf->data = kmalloc(N_TTY_BUF_SIZE, GFP_KERNEL);
 if (!buf->data)
  goto err_buf;
 atomic_set(&buf->count, 1);
 mutex_init(&buf->mutex);
 buf->major = major;
 buf->minor = minor;
 buf->icanon = icanon;
 buf->valid = 0;
 return buf;

err_buf:
 kfree(buf);
err:
 return ((void*)0);
}
