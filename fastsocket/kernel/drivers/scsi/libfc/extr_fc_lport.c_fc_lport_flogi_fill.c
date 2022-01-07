
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct fc_lport {scalar_t__ mfs; int e_d_tov; int wwnn; int wwpn; } ;
struct fc_els_csp {int sp_hi_ver; int sp_lo_ver; int sp_e_d_tov; void* sp_rel_off; void* sp_tot_seq; void* sp_features; void* sp_bb_data; void* sp_bb_cred; } ;
struct fc_els_flogi {struct fc_els_cssp* fl_cssp; struct fc_els_csp fl_csp; int fl_wwnn; int fl_wwpn; scalar_t__ fl_cmd; } ;
struct fc_els_cssp {int cp_open_seq; void* cp_con_seq; void* cp_rdfs; void* cp_class; } ;


 unsigned int ELS_FLOGI ;
 int FC_CPC_SEQ ;
 int FC_CPC_VALID ;
 int FC_SP_FT_CIRO ;
 int htonl (int ) ;
 void* htons (int) ;
 int memset (struct fc_els_flogi*,int ,int) ;
 int put_unaligned_be64 (int ,int *) ;

__attribute__((used)) static void fc_lport_flogi_fill(struct fc_lport *lport,
    struct fc_els_flogi *flogi,
    unsigned int op)
{
 struct fc_els_csp *sp;
 struct fc_els_cssp *cp;

 memset(flogi, 0, sizeof(*flogi));
 flogi->fl_cmd = (u8) op;
 put_unaligned_be64(lport->wwpn, &flogi->fl_wwpn);
 put_unaligned_be64(lport->wwnn, &flogi->fl_wwnn);
 sp = &flogi->fl_csp;
 sp->sp_hi_ver = 0x20;
 sp->sp_lo_ver = 0x20;
 sp->sp_bb_cred = htons(10);
 sp->sp_bb_data = htons((u16) lport->mfs);
 cp = &flogi->fl_cssp[3 - 1];
 cp->cp_class = htons(FC_CPC_VALID | FC_CPC_SEQ);
 if (op != ELS_FLOGI) {
  sp->sp_features = htons(FC_SP_FT_CIRO);
  sp->sp_tot_seq = htons(255);
  sp->sp_rel_off = htons(0x1f);
  sp->sp_e_d_tov = htonl(lport->e_d_tov);

  cp->cp_rdfs = htons((u16) lport->mfs);
  cp->cp_con_seq = htons(255);
  cp->cp_open_seq = 1;
 }
}
