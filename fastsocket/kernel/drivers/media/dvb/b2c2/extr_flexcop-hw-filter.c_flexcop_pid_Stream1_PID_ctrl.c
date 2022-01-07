
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct flexcop_device {int dummy; } ;


 int Stream1_PID ;
 int Stream1_filter_sig ;
 int Stream1_trans ;
 int pid_ctrl (int ,int ,int ,int ,int ) ;
 int pid_filter_300 ;

__attribute__((used)) static void flexcop_pid_Stream1_PID_ctrl(struct flexcop_device *fc,
  u16 pid, int onoff)
{
 pid_ctrl(pid_filter_300, Stream1_PID, Stream1_filter_sig,
   Stream1_trans, 0);
}
