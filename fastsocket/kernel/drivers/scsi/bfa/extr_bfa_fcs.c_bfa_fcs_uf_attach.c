
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_s {int bfa; } ;


 int bfa_fcs_uf_recv ;
 int bfa_uf_recv_register (int ,int ,struct bfa_fcs_s*) ;

void
bfa_fcs_uf_attach(struct bfa_fcs_s *fcs)
{
 bfa_uf_recv_register(fcs->bfa, bfa_fcs_uf_recv, fcs);
}
