
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int debug (int,char*,int,...) ;
 int pcc_lock ;
 int pcc_port2addr (unsigned long,int) ;
 int printk (char*,unsigned long) ;
 int readb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pcc_ioread_byte(int sock, unsigned long port, void *buf, size_t size,
 size_t nmemb, int flag)
{
 u_long addr;
 unsigned char *bp = (unsigned char *)buf;
 unsigned long flags;

 debug(3, "m32r_cfc: pcc_ioread_byte: sock=%d, port=%#lx, buf=%p, "
   "size=%u, nmemb=%d, flag=%d\n",
    sock, port, buf, size, nmemb, flag);

 addr = pcc_port2addr(port, 1);
 if (!addr) {
  printk("m32r_cfc:ioread_byte null port :%#lx\n",port);
  return;
 }
 debug(3, "m32r_cfc: pcc_ioread_byte: addr=%#lx\n", addr);

 spin_lock_irqsave(&pcc_lock, flags);

 while (nmemb--)
  *bp++ = readb(addr);
 spin_unlock_irqrestore(&pcc_lock, flags);
}
