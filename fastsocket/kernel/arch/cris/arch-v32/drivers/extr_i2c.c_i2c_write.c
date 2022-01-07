
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_LOW_TIME ;
 int i2c_delay (int ) ;
 int i2c_getack () ;
 int i2c_lock ;
 int i2c_outbyte (unsigned char) ;
 int i2c_start () ;
 int i2c_stop () ;
 int memcpy (unsigned char*,void*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
i2c_write(unsigned char theSlave, void *data, size_t nbytes)
{
 int error, cntr = 3;
 unsigned char bytes_wrote = 0;
 unsigned char value;
 unsigned long flags;

 spin_lock_irqsave(&i2c_lock, flags);

 do {
  error = 0;

  i2c_start();



  i2c_outbyte((theSlave & 0xfe));



  if (!i2c_getack())
   error = 1;



  for (bytes_wrote = 0; bytes_wrote < nbytes; bytes_wrote++) {
   memcpy(&value, data + bytes_wrote, sizeof value);
   i2c_outbyte(value);



   if (!i2c_getack())
    error |= 4;
  }



  i2c_stop();

 } while (error && cntr--);

 i2c_delay(CLOCK_LOW_TIME);

 spin_unlock_irqrestore(&i2c_lock, flags);

 return -error;
}
