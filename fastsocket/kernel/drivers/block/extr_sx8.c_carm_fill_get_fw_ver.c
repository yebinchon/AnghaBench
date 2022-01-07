
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct carm_msg_get_fw_ver {void* data_addr; void* handle; int subtype; int type; } ;
struct carm_host {int dummy; } ;
struct carm_fw_ver {int dummy; } ;


 int CARM_MSG_MISC ;
 int MISC_GET_FW_VER ;
 int TAG_ENCODE (unsigned int) ;
 scalar_t__ carm_ref_msg_dma (struct carm_host*,unsigned int) ;
 void* cpu_to_le32 (int ) ;
 int memset (struct carm_msg_get_fw_ver*,int ,int) ;

__attribute__((used)) static unsigned int carm_fill_get_fw_ver(struct carm_host *host,
      unsigned int idx, void *mem)
{
 struct carm_msg_get_fw_ver *ioc = mem;
 u32 msg_data = (u32) (carm_ref_msg_dma(host, idx) + sizeof(*ioc));

 memset(ioc, 0, sizeof(*ioc));
 ioc->type = CARM_MSG_MISC;
 ioc->subtype = MISC_GET_FW_VER;
 ioc->handle = cpu_to_le32(TAG_ENCODE(idx));
 ioc->data_addr = cpu_to_le32(msg_data);

 return sizeof(struct carm_msg_get_fw_ver) +
        sizeof(struct carm_fw_ver);
}
