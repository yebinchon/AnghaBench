
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int NETX_PFIFO_RESET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pfifo_lock ;
 unsigned int pfifo_used ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

int pfifo_request(unsigned int pfifo_mask)
{
 int err = 0;
 unsigned int val;

 mutex_lock(&pfifo_lock);

 if (pfifo_mask & pfifo_used) {
  err = -EBUSY;
  goto out;
 }

 pfifo_used |= pfifo_mask;

 val = readl(NETX_PFIFO_RESET);
 writel(val | pfifo_mask, NETX_PFIFO_RESET);
 writel(val, NETX_PFIFO_RESET);

out:
 mutex_unlock(&pfifo_lock);
 return err;
}
