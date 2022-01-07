
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vci; int vpi; } ;
struct TYPE_4__ {TYPE_1__ sap_addr; int sap_family; } ;
struct atmtcp_control {TYPE_2__ addr; } ;
struct atm_vcc {int flags; int vci; int vpi; } ;
typedef int msg ;


 int AF_ATMPVC ;
 int ATMTCP_CTRL_CLOSE ;
 int ATM_VF_ADDR ;
 int ATM_VF_READY ;
 int atmtcp_send_control (struct atm_vcc*,int ,struct atmtcp_control*,int ) ;
 int clear_bit (int ,int *) ;
 int memset (struct atmtcp_control*,int ,int) ;

__attribute__((used)) static void atmtcp_v_close(struct atm_vcc *vcc)
{
 struct atmtcp_control msg;

 memset(&msg,0,sizeof(msg));
 msg.addr.sap_family = AF_ATMPVC;
 msg.addr.sap_addr.vpi = vcc->vpi;
 msg.addr.sap_addr.vci = vcc->vci;
 clear_bit(ATM_VF_READY,&vcc->flags);
 (void) atmtcp_send_control(vcc,ATMTCP_CTRL_CLOSE,&msg,ATM_VF_ADDR);
}
