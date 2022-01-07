
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
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

unsigned char
i2c_readreg(unsigned char theSlave, unsigned char theReg)
{
 unsigned char b = 0;
 int error, cntr = 3;
 unsigned long flags;

 spin_lock(&i2c_lock);

 do {
  error = 0;



  local_irq_save(flags);



  i2c_start();




  i2c_outbyte((theSlave & 0xfe));



  if(!i2c_getack())
   error = 1;



  i2c_dir_out();
  i2c_outbyte(theReg);



  if(!i2c_getack())
   error = 1;



  i2c_delay(CLOCK_LOW_TIME);
  i2c_start();



  i2c_outbyte(theSlave | 0x01);



  if(!i2c_getack())
   error = 1;



  b = i2c_inbyte();




  i2c_sendnack();



  i2c_stop();



  local_irq_restore(flags);

 } while(error && cntr--);

 spin_unlock(&i2c_lock);

 return b;
}
