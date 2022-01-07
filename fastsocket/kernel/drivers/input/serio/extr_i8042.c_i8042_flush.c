
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I8042_BUFFER_SIZE ;
 unsigned char I8042_STR_AUXDATA ;
 unsigned char I8042_STR_OBF ;
 int dbg (char*,unsigned char,char*) ;
 int i8042_lock ;
 unsigned char i8042_read_data () ;
 unsigned char i8042_read_status () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int i8042_flush(void)
{
 unsigned long flags;
 unsigned char data, str;
 int i = 0;

 spin_lock_irqsave(&i8042_lock, flags);

 while (((str = i8042_read_status()) & I8042_STR_OBF) && (i < I8042_BUFFER_SIZE)) {
  udelay(50);
  data = i8042_read_data();
  i++;
  dbg("%02x <- i8042 (flush, %s)", data,
   str & I8042_STR_AUXDATA ? "aux" : "kbd");
 }

 spin_unlock_irqrestore(&i8042_lock, flags);

 return i;
}
