
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scbpro; } ;
struct asd_ha_struct {TYPE_1__ seq; } ;


 int ASD_DL_SIZE_BITS ;
 scalar_t__ CARP2INTEN ;
 int CM11INTVEC0 ;
 int CM11INTVEC1 ;
 int CM11INTVEC2 ;
 int CMnINTEN (int) ;
 int CMnREQMBX (int) ;
 scalar_t__ CMnSCRATCHPAGE (int) ;
 int CPRGMCNT ;
 scalar_t__ CSCRATCHPAGE ;
 scalar_t__ CSEQCOMINTEN ;
 int CSEQCON ;
 scalar_t__ CSEQDLCTL ;
 scalar_t__ CSEQDLOFFS ;
 int EN_ARP2HALTC ;
 int EN_CMnRSPMBXF ;
 int SCBPRO ;
 int asd_write_reg_byte (struct asd_ha_struct*,scalar_t__,int) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int ) ;
 int asd_write_reg_word (struct asd_ha_struct*,int ,int ) ;
 int cseq_idle_loop ;
 int * cseq_vecs ;

__attribute__((used)) static void asd_init_cseq_cio(struct asd_ha_struct *asd_ha)
{
 int i;

 asd_write_reg_byte(asd_ha, CSEQCOMINTEN, 0);
 asd_write_reg_byte(asd_ha, CSEQDLCTL, ASD_DL_SIZE_BITS);
 asd_write_reg_byte(asd_ha, CSEQDLOFFS, 0);
 asd_write_reg_byte(asd_ha, CSEQDLOFFS+1, 0);
 asd_ha->seq.scbpro = 0;
 asd_write_reg_dword(asd_ha, SCBPRO, 0);
 asd_write_reg_dword(asd_ha, CSEQCON, 0);





 asd_write_reg_word(asd_ha, CM11INTVEC0, cseq_vecs[0]);
 asd_write_reg_word(asd_ha, CM11INTVEC1, cseq_vecs[1]);
 asd_write_reg_word(asd_ha, CM11INTVEC2, cseq_vecs[2]);


 asd_write_reg_byte(asd_ha, CARP2INTEN, EN_ARP2HALTC);


 asd_write_reg_byte(asd_ha, CSCRATCHPAGE, 0x04);



 for (i = 0; i < 9; i++)
  asd_write_reg_byte(asd_ha, CMnSCRATCHPAGE(i), 0);


 asd_write_reg_word(asd_ha, CPRGMCNT, cseq_idle_loop);

 for (i = 0; i < 8; i++) {

  asd_write_reg_dword(asd_ha, CMnINTEN(i), EN_CMnRSPMBXF);

  asd_write_reg_dword(asd_ha, CMnREQMBX(i), 0);
 }
}
