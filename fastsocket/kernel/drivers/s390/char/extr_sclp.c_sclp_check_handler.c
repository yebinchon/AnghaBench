
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ addr_t ;
typedef int __u16 ;
struct TYPE_4__ {int ext_params; } ;
struct TYPE_3__ {int status; } ;


 TYPE_2__ S390_lowcore ;
 int SCLP_REQ_DONE ;
 int panic (char*,int) ;
 TYPE_1__ sclp_init_req ;
 scalar_t__ sclp_init_sccb ;
 int sclp_lock ;
 scalar_t__ sclp_running_state ;
 scalar_t__ sclp_running_state_idle ;
 scalar_t__ sclp_running_state_running ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
sclp_check_handler(__u16 code)
{
 u32 finished_sccb;

 finished_sccb = S390_lowcore.ext_params & 0xfffffff8;

 if (finished_sccb == 0)
  return;
 if (finished_sccb != (u32) (addr_t) sclp_init_sccb)
  panic("sclp: unsolicited interrupt for buffer at 0x%x\n",
        finished_sccb);
 spin_lock(&sclp_lock);
 if (sclp_running_state == sclp_running_state_running) {
  sclp_init_req.status = SCLP_REQ_DONE;
  sclp_running_state = sclp_running_state_idle;
 }
 spin_unlock(&sclp_lock);
}
