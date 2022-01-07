
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {short vpi; int vci; } ;
struct TYPE_7__ {TYPE_2__ sap_addr; int sap_family; } ;
struct TYPE_5__ {void* vci; void* vpi; } ;
struct atmtcp_control {int qos; int type; TYPE_3__ addr; TYPE_1__ hdr; } ;
struct atm_vcc {short vpi; int vci; int flags; int qos; } ;
typedef int msg ;
struct TYPE_8__ {int sk_err; } ;


 int AF_ATMPVC ;
 int ATMTCP_CTRL_OPEN ;
 int ATM_VCI_UNSPEC ;
 int ATM_VF_ADDR ;
 int ATM_VF_READY ;
 short ATM_VPI_UNSPEC ;
 int atmtcp_send_control (struct atm_vcc*,int ,struct atmtcp_control*,int ) ;
 int clear_bit (int ,int *) ;
 void* htons (int) ;
 int memset (struct atmtcp_control*,int ,int) ;
 int set_bit (int ,int *) ;
 TYPE_4__* sk_atm (struct atm_vcc*) ;

__attribute__((used)) static int atmtcp_v_open(struct atm_vcc *vcc)
{
 struct atmtcp_control msg;
 int error;
 short vpi = vcc->vpi;
 int vci = vcc->vci;

 memset(&msg,0,sizeof(msg));
 msg.addr.sap_family = AF_ATMPVC;
 msg.hdr.vpi = htons(vpi);
 msg.addr.sap_addr.vpi = vpi;
 msg.hdr.vci = htons(vci);
 msg.addr.sap_addr.vci = vci;
 if (vpi == ATM_VPI_UNSPEC || vci == ATM_VCI_UNSPEC) return 0;
 msg.type = ATMTCP_CTRL_OPEN;
 msg.qos = vcc->qos;
 set_bit(ATM_VF_ADDR,&vcc->flags);
 clear_bit(ATM_VF_READY,&vcc->flags);
 error = atmtcp_send_control(vcc,ATMTCP_CTRL_OPEN,&msg,ATM_VF_READY);
 if (error) return error;
 return -sk_atm(vcc)->sk_err;
}
