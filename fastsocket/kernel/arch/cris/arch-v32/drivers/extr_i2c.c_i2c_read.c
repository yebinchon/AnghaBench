
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i2c_getack () ;
 unsigned char i2c_inbyte () ;
 int i2c_lock ;
 int i2c_outbyte (unsigned char) ;
 int i2c_sendack () ;
 int i2c_sendnack () ;
 int i2c_start () ;
 int i2c_stop () ;
 int memcpy (void*,unsigned char*,int) ;
 int memset (void*,int ,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
i2c_read(unsigned char theSlave, void *data, size_t nbytes)
{
 unsigned char b = 0;
 unsigned char bytes_read = 0;
 int error, cntr = 3;
 unsigned long flags;

 spin_lock_irqsave(&i2c_lock, flags);

 do {
  error = 0;
  memset(data, 0, nbytes);



  i2c_start();



  i2c_outbyte((theSlave | 0x01));



  if (!i2c_getack())
   error = 1;



  for (bytes_read = 0; bytes_read < nbytes; bytes_read++) {
   b = i2c_inbyte();
   memcpy(data + bytes_read, &b, sizeof b);

   if (bytes_read < (nbytes - 1))
    i2c_sendack();
  }




  i2c_sendnack();



  i2c_stop();
 } while (error && cntr--);

 spin_unlock_irqrestore(&i2c_lock, flags);

 return -error;
}
