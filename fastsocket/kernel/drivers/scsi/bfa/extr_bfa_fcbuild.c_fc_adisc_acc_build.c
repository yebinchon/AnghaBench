
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fc_adisc_s {int dummy; } ;
typedef int __be16 ;


 int FC_ELS_ACC ;
 int fc_adisc_x_build (struct fchs_s*,struct fc_adisc_s*,int ,int ,int ,int ,int ,int ) ;

u16
fc_adisc_acc_build(struct fchs_s *fchs, struct fc_adisc_s *adisc, u32 d_id,
     u32 s_id, __be16 ox_id, wwn_t port_name,
     wwn_t node_name)
{
 return fc_adisc_x_build(fchs, adisc, d_id, s_id, ox_id, port_name,
    node_name, FC_ELS_ACC);
}
