
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMPTY ;
 scalar_t__ PIO_FIFO_1 ;
 scalar_t__ PIO_FIFO_CNT ;
 scalar_t__ PIO_INT_REG ;
 int READ_TIMEOUT ;
 int SCI ;
 scalar_t__ fastpio ;
 int inb (scalar_t__) ;
 int insl (scalar_t__,unsigned char*,unsigned int) ;
 int jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sym53c416_lock ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static __inline__ unsigned int sym53c416_read(int base, unsigned char *buffer, unsigned int len)
{
 unsigned int orig_len = len;
 unsigned long flags = 0;
 unsigned int bytes_left;
 unsigned long i;
 int timeout = READ_TIMEOUT;


 spin_lock_irqsave(&sym53c416_lock, flags);
 while(len && timeout)
 {
  bytes_left = inb(base + PIO_FIFO_CNT);
  if(fastpio && bytes_left > 3)
  {
   insl(base + PIO_FIFO_1, buffer, bytes_left >> 2);
   buffer += bytes_left & 0xFC;
   len -= bytes_left & 0xFC;
  }
  else if(bytes_left > 0)
  {
   len -= bytes_left;
   for(; bytes_left > 0; bytes_left--)
    *(buffer++) = inb(base + PIO_FIFO_1);
  }
  else
  {
   i = jiffies + timeout;
   spin_unlock_irqrestore(&sym53c416_lock, flags);
   while(time_before(jiffies, i) && (inb(base + PIO_INT_REG) & EMPTY) && timeout)
    if(inb(base + PIO_INT_REG) & SCI)
     timeout = 0;
   spin_lock_irqsave(&sym53c416_lock, flags);
   if(inb(base + PIO_INT_REG) & EMPTY)
    timeout = 0;
  }
 }
 spin_unlock_irqrestore(&sym53c416_lock, flags);
 return orig_len - len;
}
