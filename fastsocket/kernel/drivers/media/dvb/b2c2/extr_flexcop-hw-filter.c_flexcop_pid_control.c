
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct flexcop_device {int (* write_ibi_reg ) (struct flexcop_device*,int ,TYPE_3__) ;TYPE_3__ (* read_ibi_reg ) (struct flexcop_device*,int ) ;int has_32_hw_pid_filter; } ;
struct TYPE_9__ {int PID; int PID_enable_bit; } ;
struct TYPE_8__ {int index_reg; } ;
struct TYPE_10__ {TYPE_2__ pid_n_reg_314; TYPE_1__ index_reg_310; } ;
typedef TYPE_3__ flexcop_ibi_value ;


 int deb_ts (char*,int,int,int,char*) ;
 int flexcop_pid_ECM_PID_ctrl (struct flexcop_device*,int,int) ;
 int flexcop_pid_EMM_PID_ctrl (struct flexcop_device*,int,int) ;
 int flexcop_pid_PCR_PID_ctrl (struct flexcop_device*,int,int) ;
 int flexcop_pid_PMT_PID_ctrl (struct flexcop_device*,int,int) ;
 int flexcop_pid_Stream1_PID_ctrl (struct flexcop_device*,int,int) ;
 int flexcop_pid_Stream2_PID_ctrl (struct flexcop_device*,int,int) ;
 int index_reg_310 ;
 int pid_n_reg_314 ;
 TYPE_3__ stub1 (struct flexcop_device*,int ) ;
 int stub2 (struct flexcop_device*,int ,TYPE_3__) ;
 TYPE_3__ stub3 (struct flexcop_device*,int ) ;
 int stub4 (struct flexcop_device*,int ,TYPE_3__) ;

__attribute__((used)) static void flexcop_pid_control(struct flexcop_device *fc,
  int index, u16 pid, int onoff)
{
 if (pid == 0x2000)
  return;

 deb_ts("setting pid: %5d %04x at index %d '%s'\n",
   pid, pid, index, onoff ? "on" : "off");



 switch (index) {
 case 0:
  flexcop_pid_Stream1_PID_ctrl(fc, pid, onoff);
  break;
 case 1:
  flexcop_pid_Stream2_PID_ctrl(fc, pid, onoff);
  break;
 case 2:
  flexcop_pid_PCR_PID_ctrl(fc, pid, onoff);
  break;
 case 3:
  flexcop_pid_PMT_PID_ctrl(fc, pid, onoff);
  break;
 case 4:
  flexcop_pid_EMM_PID_ctrl(fc, pid, onoff);
  break;
 case 5:
  flexcop_pid_ECM_PID_ctrl(fc, pid, onoff);
  break;
 default:
  if (fc->has_32_hw_pid_filter && index < 38) {
   flexcop_ibi_value vpid, vid;


   vid = fc->read_ibi_reg(fc, index_reg_310);
   vid.index_reg_310.index_reg = index - 6;
   fc->write_ibi_reg(fc, index_reg_310, vid);

   vpid = fc->read_ibi_reg(fc, pid_n_reg_314);
   vpid.pid_n_reg_314.PID = onoff ? pid : 0x1fff;
   vpid.pid_n_reg_314.PID_enable_bit = onoff;
   fc->write_ibi_reg(fc, pid_n_reg_314, vpid);
  }
  break;
 }
}
