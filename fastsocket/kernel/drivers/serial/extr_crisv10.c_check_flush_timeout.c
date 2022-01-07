
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {scalar_t__ first_recv_buffer; } ;


 int START_FLUSH_FAST_TIMER_TIME (struct e100_serial*,char*,int) ;
 int flush_to_flip_buffer (struct e100_serial*) ;
 int force_eop_if_needed (struct e100_serial*) ;

__attribute__((used)) static void check_flush_timeout(struct e100_serial *info)
{

 flush_to_flip_buffer(info);



 if (info->first_recv_buffer)
  START_FLUSH_FAST_TIMER_TIME(info, "flip", 2000);





 force_eop_if_needed(info);
}
