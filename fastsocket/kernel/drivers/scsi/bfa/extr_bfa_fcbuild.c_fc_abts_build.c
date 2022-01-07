
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int u16 ;
struct fchs_s {int ox_id; void* s_id; void* d_id; int cat_info; } ;


 int FC_CAT_ABTS ;
 int cpu_to_be16 (int) ;
 int fc_bls_req_tmpl ;
 int memcpy (struct fchs_s*,int *,int) ;

u16
fc_abts_build(struct fchs_s *fchs, u32 d_id, u32 s_id, u16 ox_id)
{
 memcpy(fchs, &fc_bls_req_tmpl, sizeof(struct fchs_s));
 fchs->cat_info = FC_CAT_ABTS;
 fchs->d_id = (d_id);
 fchs->s_id = (s_id);
 fchs->ox_id = cpu_to_be16(ox_id);

 return sizeof(struct fchs_s);
}
