
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int port_state; struct fc_vport* fc_vport; } ;
struct fc_vport {int vport_last_state; int vport_state; } ;
typedef enum fc_vport_state { ____Placeholder_fc_vport_state } fc_vport_state ;





 int FC_VPORT_INITIALIZING ;



 int LPFC_VPORT_FAILED ;
 int LPFC_VPORT_UNKNOWN ;

inline void lpfc_vport_set_state(struct lpfc_vport *vport,
     enum fc_vport_state new_state)
{
 struct fc_vport *fc_vport = vport->fc_vport;

 if (fc_vport) {





  if (new_state != FC_VPORT_INITIALIZING)
   fc_vport->vport_last_state = fc_vport->vport_state;
  fc_vport->vport_state = new_state;
 }


 switch (new_state) {
 case 128:
 case 129:
 case 133:
 case 132:
 case 131:
  vport->port_state = LPFC_VPORT_FAILED;
  break;
 case 130:
  vport->port_state = LPFC_VPORT_UNKNOWN;
  break;
 default:

  break;
 }
}
