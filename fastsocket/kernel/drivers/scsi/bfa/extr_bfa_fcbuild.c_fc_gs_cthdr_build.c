
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ct_hdr_s {int cmd_rsp_code; int gs_sub_type; int gs_type; int rev_id; } ;


 int CT_GS3_REVISION ;
 int CT_GSSUBTYPE_NAMESERVER ;
 int CT_GSTYPE_DIRSERVICE ;
 int cpu_to_be16 (int ) ;
 int memset (struct ct_hdr_s*,int ,int) ;

__attribute__((used)) static void
fc_gs_cthdr_build(struct ct_hdr_s *cthdr, u32 s_id, u16 cmd_code)
{
 memset(cthdr, 0, sizeof(struct ct_hdr_s));
 cthdr->rev_id = CT_GS3_REVISION;
 cthdr->gs_type = CT_GSTYPE_DIRSERVICE;
 cthdr->gs_sub_type = CT_GSSUBTYPE_NAMESERVER;
 cthdr->cmd_rsp_code = cpu_to_be16(cmd_code);
}
