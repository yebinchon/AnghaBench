
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int dummy; } ;


 int CPRGMCNT ;
 int asd_unpause_cseq (struct asd_ha_struct*) ;
 int asd_write_reg_word (struct asd_ha_struct*,int ,int ) ;
 int cseq_idle_loop ;

__attribute__((used)) static int asd_seq_start_cseq(struct asd_ha_struct *asd_ha)
{

 asd_write_reg_word(asd_ha, CPRGMCNT, cseq_idle_loop);


 return asd_unpause_cseq(asd_ha);
}
