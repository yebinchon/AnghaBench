
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip {int mtu; unsigned long buffsize; int lock; scalar_t__ xbits; scalar_t__ xdata; int slcomp; int cbuff; int xbuff; int rbuff; scalar_t__ xleft; scalar_t__ rcount; int * tty; } ;
typedef char slcompress ;


 int ENOBUFS ;
 int ENODEV ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (unsigned long,int ) ;
 int slhc_free (char*) ;
 char* slhc_init (int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 char* xchg (int *,char*) ;

__attribute__((used)) static int sl_alloc_bufs(struct slip *sl, int mtu)
{
 int err = -ENOBUFS;
 unsigned long len;
 char *rbuff = ((void*)0);
 char *xbuff = ((void*)0);
 len = mtu * 2;






 if (len < 576 * 2)
  len = 576 * 2;
 rbuff = kmalloc(len + 4, GFP_KERNEL);
 if (rbuff == ((void*)0))
  goto err_exit;
 xbuff = kmalloc(len + 4, GFP_KERNEL);
 if (xbuff == ((void*)0))
  goto err_exit;
 spin_lock_bh(&sl->lock);
 if (sl->tty == ((void*)0)) {
  spin_unlock_bh(&sl->lock);
  err = -ENODEV;
  goto err_exit;
 }
 sl->mtu = mtu;
 sl->buffsize = len;
 sl->rcount = 0;
 sl->xleft = 0;
 rbuff = xchg(&sl->rbuff, rbuff);
 xbuff = xchg(&sl->xbuff, xbuff);
 spin_unlock_bh(&sl->lock);
 err = 0;


err_exit:





 kfree(xbuff);
 kfree(rbuff);
 return err;
}
