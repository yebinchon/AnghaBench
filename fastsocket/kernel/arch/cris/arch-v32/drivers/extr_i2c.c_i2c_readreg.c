
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_LOW_TIME ;
 int i2c_delay (int ) ;
 int i2c_dir_out () ;
 int i2c_getack () ;
 unsigned char i2c_inbyte () ;
 int i2c_lock ;
 int i2c_outbyte (unsigned char) ;
 int i2c_sendnack () ;
 int i2c_start () ;
 int i2c_stop () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned char
i2c_readreg(unsigned char theSlave, unsigned char theReg)
{
 unsigned char b = 0;
 int error, cntr = 3;
 unsigned long flags;

 spin_lock_irqsave(&i2c_lock, flags);

 do {
  error = 0;



  i2c_start();




  i2c_outbyte((theSlave & 0xfe));



  if(!i2c_getack())
   error = 1;



  i2c_dir_out();
  i2c_outbyte(theReg);



  if(!i2c_getack())
   error |= 2;



  i2c_delay(CLOCK_LOW_TIME);
  i2c_start();



  i2c_outbyte(theSlave | 0x01);



  if(!i2c_getack())
   error |= 4;



  b = i2c_inbyte();




  i2c_sendnack();



  i2c_stop();

 } while(error && cntr--);

 spin_unlock_irqrestore(&i2c_lock, flags);

 return b;
}
