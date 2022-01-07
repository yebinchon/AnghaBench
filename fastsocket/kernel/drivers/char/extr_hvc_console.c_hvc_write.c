
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct hvc_struct* driver_data; } ;
struct hvc_struct {scalar_t__ count; scalar_t__ n_outbuf; int outbuf_size; int outbuf; int lock; } ;


 int EIO ;
 int EPIPE ;
 int hvc_kick () ;
 int hvc_push (struct hvc_struct*) ;
 int memcpy (int,unsigned char const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hvc_write(struct tty_struct *tty, const unsigned char *buf, int count)
{
 struct hvc_struct *hp = tty->driver_data;
 unsigned long flags;
 int rsize, written = 0;


 if (!hp)
  return -EPIPE;

 if (hp->count <= 0)
  return -EIO;

 spin_lock_irqsave(&hp->lock, flags);


 if (hp->n_outbuf > 0)
  hvc_push(hp);

 while (count > 0 && (rsize = hp->outbuf_size - hp->n_outbuf) > 0) {
  if (rsize > count)
   rsize = count;
  memcpy(hp->outbuf + hp->n_outbuf, buf, rsize);
  count -= rsize;
  buf += rsize;
  hp->n_outbuf += rsize;
  written += rsize;
  hvc_push(hp);
 }
 spin_unlock_irqrestore(&hp->lock, flags);




 if (hp->n_outbuf)
  hvc_kick();

 return written;
}
