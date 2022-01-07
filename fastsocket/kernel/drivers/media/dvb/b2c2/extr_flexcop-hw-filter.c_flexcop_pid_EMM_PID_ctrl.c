
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct flexcop_device {int dummy; } ;


 int EMM_PID ;
 int EMM_filter_sig ;
 int EMM_trans ;
 int pid_ctrl (int ,int ,int ,int ,int ) ;
 int pid_filter_308 ;

__attribute__((used)) static void flexcop_pid_EMM_PID_ctrl(struct flexcop_device *fc,
  u16 pid, int onoff)
{
 pid_ctrl(pid_filter_308, EMM_PID, EMM_filter_sig, EMM_trans, 0);
}
