
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct be_mcc_wrb {int member_0; } ;
struct be_cmd_resp_if_create {int pmac_id; int interface_id; } ;
struct TYPE_2__ {void* domain; } ;
struct be_cmd_req_if_create {int pmac_invalid; void* enable_flags; void* capability_flags; TYPE_1__ hdr; } ;
struct be_adapter {void** pmac_id; } ;


 scalar_t__ BE3_chip (struct be_adapter*) ;
 int CMD_SUBSYSTEM_COMMON ;
 int OPCODE_COMMON_NTWK_INTERFACE_CREATE ;
 int be_cmd_notify_wait (struct be_adapter*,struct be_mcc_wrb*) ;
 int be_physfn (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le32 (void*) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 void* le32_to_cpu (int ) ;

int be_cmd_if_create(struct be_adapter *adapter, u32 cap_flags, u32 en_flags,
       u32 *if_handle, u32 domain)
{
 struct be_mcc_wrb wrb = {0};
 struct be_cmd_req_if_create *req;
 int status;

 req = embedded_payload(&wrb);
 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
  OPCODE_COMMON_NTWK_INTERFACE_CREATE, sizeof(*req), &wrb, ((void*)0));
 req->hdr.domain = domain;
 req->capability_flags = cpu_to_le32(cap_flags);
 req->enable_flags = cpu_to_le32(en_flags);
 req->pmac_invalid = 1;

 status = be_cmd_notify_wait(adapter, &wrb);
 if (!status) {
  struct be_cmd_resp_if_create *resp = embedded_payload(&wrb);
  *if_handle = le32_to_cpu(resp->interface_id);


  if (BE3_chip(adapter) && !be_physfn(adapter))
   adapter->pmac_id[0] = le32_to_cpu(resp->pmac_id);
 }
 return status;
}
