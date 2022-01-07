
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i2c_register_board_info (int ,int *,int) ;
 int sam440ep_rtc_info ;

__attribute__((used)) static int sam440ep_setup_rtc(void)
{
 return i2c_register_board_info(0, &sam440ep_rtc_info, 1);
}
