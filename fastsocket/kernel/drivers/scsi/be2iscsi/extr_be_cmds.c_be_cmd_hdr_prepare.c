
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct be_cmd_req_hdr {int timeout; int request_length; void* subsystem; void* opcode; } ;


 int BEISCSI_FW_MBX_TIMEOUT ;
 int cpu_to_le32 (int) ;

void be_cmd_hdr_prepare(struct be_cmd_req_hdr *req_hdr,
   u8 subsystem, u8 opcode, int cmd_len)
{
 req_hdr->opcode = opcode;
 req_hdr->subsystem = subsystem;
 req_hdr->request_length = cpu_to_le32(cmd_len - sizeof(*req_hdr));
 req_hdr->timeout = BEISCSI_FW_MBX_TIMEOUT;
}
