
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct fchs_s {int ox_id; void* s_id; void* d_id; } ;
typedef int __be16 ;


 int fc_els_rsp_tmpl ;
 int memcpy (struct fchs_s*,int *,int) ;

__attribute__((used)) static void
fc_els_rsp_build(struct fchs_s *fchs, u32 d_id, u32 s_id, __be16 ox_id)
{
 memcpy(fchs, &fc_els_rsp_tmpl, sizeof(struct fchs_s));
 fchs->d_id = d_id;
 fchs->s_id = s_id;
 fchs->ox_id = ox_id;
}
