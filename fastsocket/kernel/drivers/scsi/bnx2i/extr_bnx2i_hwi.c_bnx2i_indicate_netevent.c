
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bnx2i_hba {int shost; int adapter_state; } ;


 int ADAPTER_STATE_GOING_DOWN ;
 int ADAPTER_STATE_UP ;




 int bnx2i_drop_session ;
 int bnx2i_get_link_state (struct bnx2i_hba*) ;
 int bnx2i_send_fw_iscsi_init_msg (struct bnx2i_hba*) ;
 int clear_bit (int ,int *) ;
 int iscsi_host_for_each_session (int ,int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void bnx2i_indicate_netevent(void *context, unsigned long event,
        u16 vlan_id)
{
 struct bnx2i_hba *hba = context;


 if (vlan_id != 0)
  return;

 switch (event) {
 case 128:
  if (!test_bit(ADAPTER_STATE_UP, &hba->adapter_state))
   bnx2i_send_fw_iscsi_init_msg(hba);
  break;
 case 130:
  clear_bit(ADAPTER_STATE_GOING_DOWN, &hba->adapter_state);
  clear_bit(ADAPTER_STATE_UP, &hba->adapter_state);
  break;
 case 129:
  set_bit(ADAPTER_STATE_GOING_DOWN, &hba->adapter_state);
  iscsi_host_for_each_session(hba->shost,
         bnx2i_drop_session);
  break;
 case 131:
  bnx2i_get_link_state(hba);
  break;
 default:
  ;
 }
}
