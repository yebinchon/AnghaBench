
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sym_hcb {int dummy; } ;


 int DEBUG_FLAGS ;
 int DEBUG_TINY ;
 int HS_SEL_TIMEOUT ;
 scalar_t__ INL (struct sym_hcb*,int ) ;
 scalar_t__ SCRIPTA_BA (struct sym_hcb*,int ) ;
 int nc_dsp ;
 int printf (char*) ;
 int sym_recover_scsi_int (struct sym_hcb*,int ) ;
 int sym_start_reset (struct sym_hcb*) ;
 int wf_sel_done ;

__attribute__((used)) static void sym_int_sto (struct sym_hcb *np)
{
 u32 dsp = INL(np, nc_dsp);

 if (DEBUG_FLAGS & DEBUG_TINY) printf ("T");

 if (dsp == SCRIPTA_BA(np, wf_sel_done) + 8)
  sym_recover_scsi_int(np, HS_SEL_TIMEOUT);
 else
  sym_start_reset(np);
}
