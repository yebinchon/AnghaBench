
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int dummy; } ;


 int CARP2INTCTL ;
 int CMnINT (int) ;
 int CMnRSPMBX (int) ;
 int RSTINTCTL ;
 int asd_read_reg_dword (struct asd_ha_struct*,int ) ;
 int asd_write_reg_byte (struct asd_ha_struct*,int ,int ) ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;

__attribute__((used)) static void asd_post_init_cseq(struct asd_ha_struct *asd_ha)
{
 int i;

 for (i = 0; i < 8; i++)
  asd_write_reg_dword(asd_ha, CMnINT(i), 0xFFFFFFFF);
 for (i = 0; i < 8; i++)
  asd_read_reg_dword(asd_ha, CMnRSPMBX(i));

 asd_write_reg_byte(asd_ha, CARP2INTCTL, RSTINTCTL);
}
