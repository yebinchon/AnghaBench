
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; } ;
struct kek_mgmt_req {int new_curidx_ksop; int tag; } ;
struct inbound_queue_table {int dummy; } ;


 int KEK_MGMT_SUBOP_KEYCARDUPDATE ;
 int OPC_INB_KEK_MANAGEMENT ;
 int cpu_to_le32 (int ) ;
 int memset (struct kek_mgmt_req*,int ,int) ;
 int pm8001_mpi_build_cmd (struct pm8001_hba_info*,struct inbound_queue_table*,int ,struct kek_mgmt_req*,int ) ;
 int pm8001_tag_alloc (struct pm8001_hba_info*,int *) ;

__attribute__((used)) static int pm80xx_encrypt_update(struct pm8001_hba_info *pm8001_ha)
{
 struct kek_mgmt_req payload;
 struct inbound_queue_table *circularQ;
 int rc;
 u32 tag;
 u32 opc = OPC_INB_KEK_MANAGEMENT;

 memset(&payload, 0, sizeof(struct kek_mgmt_req));
 rc = pm8001_tag_alloc(pm8001_ha, &tag);
 if (rc)
  return -1;

 circularQ = &pm8001_ha->inbnd_q_tbl[0];
 payload.tag = cpu_to_le32(tag);



 payload.new_curidx_ksop = ((1 << 24) | (1 << 16) | (1 << 8) |
     KEK_MGMT_SUBOP_KEYCARDUPDATE);

 rc = pm8001_mpi_build_cmd(pm8001_ha, circularQ, opc, &payload, 0);

 return rc;
}
