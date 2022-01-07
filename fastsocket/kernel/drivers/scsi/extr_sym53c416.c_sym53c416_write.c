
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULL ;
 scalar_t__ PIO_FIFO_1 ;
 scalar_t__ PIO_FIFO_CNT ;
 scalar_t__ PIO_INT_REG ;
 unsigned int PIO_SIZE ;
 unsigned int WRITE_TIMEOUT ;
 scalar_t__ fastpio ;
 int inb (scalar_t__) ;
 unsigned int jiffies ;
 int outb (int ,scalar_t__) ;
 int outsl (scalar_t__,unsigned char*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sym53c416_lock ;
 scalar_t__ time_before (unsigned int,unsigned long) ;

__attribute__((used)) static __inline__ unsigned int sym53c416_write(int base, unsigned char *buffer, unsigned int len)
{
 unsigned int orig_len = len;
 unsigned long flags = 0;
 unsigned int bufferfree;
 unsigned long i;
 unsigned int timeout = WRITE_TIMEOUT;


 spin_lock_irqsave(&sym53c416_lock, flags);
 while(len && timeout)
 {
  bufferfree = PIO_SIZE - inb(base + PIO_FIFO_CNT);
  if(bufferfree > len)
   bufferfree = len;
  if(fastpio && bufferfree > 3)
  {
   outsl(base + PIO_FIFO_1, buffer, bufferfree >> 2);
   buffer += bufferfree & 0xFC;
   len -= bufferfree & 0xFC;
  }
  else if(bufferfree > 0)
  {
   len -= bufferfree;
   for(; bufferfree > 0; bufferfree--)
    outb(*(buffer++), base + PIO_FIFO_1);
  }
  else
  {
   i = jiffies + timeout;
   spin_unlock_irqrestore(&sym53c416_lock, flags);
   while(time_before(jiffies, i) && (inb(base + PIO_INT_REG) & FULL) && timeout)
    ;
   spin_lock_irqsave(&sym53c416_lock, flags);
   if(inb(base + PIO_INT_REG) & FULL)
    timeout = 0;
  }
 }
 spin_unlock_irqrestore(&sym53c416_lock, flags);
 return orig_len - len;
}
