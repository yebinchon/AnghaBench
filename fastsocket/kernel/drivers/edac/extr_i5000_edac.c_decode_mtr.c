
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MTR_DIMMS_PRESENT (int ) ;
 size_t MTR_DIMM_COLS (int ) ;
 scalar_t__ MTR_DIMM_RANK (int ) ;
 size_t MTR_DIMM_ROWS (int ) ;
 char* MTR_DRAM_BANKS (int ) ;
 char* MTR_DRAM_WIDTH (int ) ;
 int debugf2 (char*,...) ;
 char** numcol_toString ;
 char** numrow_toString ;

__attribute__((used)) static void decode_mtr(int slot_row, u16 mtr)
{
 int ans;

 ans = MTR_DIMMS_PRESENT(mtr);

 debugf2("\tMTR%d=0x%x:  DIMMs are %s\n", slot_row, mtr,
  ans ? "Present" : "NOT Present");
 if (!ans)
  return;

 debugf2("\t\tWIDTH: x%d\n", MTR_DRAM_WIDTH(mtr));
 debugf2("\t\tNUMBANK: %d bank(s)\n", MTR_DRAM_BANKS(mtr));
 debugf2("\t\tNUMRANK: %s\n", MTR_DIMM_RANK(mtr) ? "double" : "single");
 debugf2("\t\tNUMROW: %s\n", numrow_toString[MTR_DIMM_ROWS(mtr)]);
 debugf2("\t\tNUMCOL: %s\n", numcol_toString[MTR_DIMM_COLS(mtr)]);
}
