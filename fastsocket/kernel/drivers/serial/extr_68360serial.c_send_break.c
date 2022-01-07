
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ser_info_t ;


 int begin_break (int *) ;
 int end_break (int *) ;
 int jiffies ;
 int msleep_interruptible (unsigned int) ;
 int printk (char*,unsigned int,...) ;

__attribute__((used)) static void send_break(ser_info_t *info, unsigned int duration)
{



 begin_break(info);
 msleep_interruptible(duration);
 end_break(info);



}
