
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;


 int FC_ELS_PLOGI ;
 int fc_plogi_x_build (struct fchs_s*,void*,int ,int ,int ,int ,int ,int ,int ,int ) ;

u16
fc_plogi_build(struct fchs_s *fchs, void *pld, u32 d_id, u32 s_id,
        u16 ox_id, wwn_t port_name, wwn_t node_name,
        u16 pdu_size, u16 bb_cr)
{
 return fc_plogi_x_build(fchs, pld, d_id, s_id, ox_id, port_name,
    node_name, pdu_size, bb_cr, FC_ELS_PLOGI);
}
