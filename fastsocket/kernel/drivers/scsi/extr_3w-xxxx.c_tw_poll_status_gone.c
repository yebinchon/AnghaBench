
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int TW_Device_Extension ;


 int HZ ;
 int TW_STATUS_REG_ADDR (int *) ;
 int inl (int ) ;
 unsigned long jiffies ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ tw_check_bits (int) ;
 int tw_decode_bits (int *,int,int ) ;

__attribute__((used)) static int tw_poll_status_gone(TW_Device_Extension *tw_dev, u32 flag, int seconds)
{
 u32 status_reg_value;
 unsigned long before;
 int retval = 1;

 status_reg_value = inl(TW_STATUS_REG_ADDR(tw_dev));
 before = jiffies;

 if (tw_check_bits(status_reg_value))
  tw_decode_bits(tw_dev, status_reg_value, 0);

 while ((status_reg_value & flag) != 0) {
  status_reg_value = inl(TW_STATUS_REG_ADDR(tw_dev));

  if (tw_check_bits(status_reg_value))
   tw_decode_bits(tw_dev, status_reg_value, 0);

  if (time_after(jiffies, before + HZ * seconds))
   goto out;

  msleep(50);
 }
 retval = 0;
out:
 return retval;
}
