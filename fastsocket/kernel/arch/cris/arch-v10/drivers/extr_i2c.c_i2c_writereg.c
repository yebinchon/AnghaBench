
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_LOW_TIME ;
 int i2c_delay (int ) ;
 int i2c_dir_out () ;
 int i2c_getack () ;
 int i2c_lock ;
 int i2c_outbyte (unsigned char) ;
 int i2c_start () ;
 int i2c_stop () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
i2c_writereg(unsigned char theSlave, unsigned char theReg,
      unsigned char theValue)
{
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
   error |= 2;



  i2c_outbyte(theValue);



  if(!i2c_getack())
   error |= 4;



  i2c_stop();



  local_irq_restore(flags);

 } while(error && cntr--);

 i2c_delay(CLOCK_LOW_TIME);

 spin_unlock(&i2c_lock);

 return -error;
}
