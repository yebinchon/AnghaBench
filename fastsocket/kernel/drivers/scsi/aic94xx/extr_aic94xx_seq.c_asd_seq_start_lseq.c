
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int dummy; } ;


 int LmPRGMCNT (int) ;
 int asd_seq_unpause_lseq (struct asd_ha_struct*,int) ;
 int asd_write_reg_word (struct asd_ha_struct*,int ,int ) ;
 int lseq_idle_loop ;

__attribute__((used)) static int asd_seq_start_lseq(struct asd_ha_struct *asd_ha, int lseq)
{

 asd_write_reg_word(asd_ha, LmPRGMCNT(lseq), lseq_idle_loop);


 return asd_seq_unpause_lseq(asd_ha, lseq);
}
