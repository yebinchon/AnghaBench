
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int OOB_CMD_DRIVER_STOP ;
 int rtl8168_oob_notify (struct rtl8169_private*,int ) ;
 int rtl_msleep_loop_wait_low (struct rtl8169_private*,int *,int,int) ;
 int rtl_ocp_read_cond ;

__attribute__((used)) static void rtl8168_driver_stop(struct rtl8169_private *tp)
{
 rtl8168_oob_notify(tp, OOB_CMD_DRIVER_STOP);

 rtl_msleep_loop_wait_low(tp, &rtl_ocp_read_cond, 10, 10);
}
