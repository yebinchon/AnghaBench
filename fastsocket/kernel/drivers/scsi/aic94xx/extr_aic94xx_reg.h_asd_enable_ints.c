
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int dummy; } ;


 int CHIMINTEN ;
 int COMSTATEN ;
 int DCHSTATUS ;
 int EN_CFIFTOERR ;
 int EN_CSBUFPERR ;
 int EN_CSERR ;
 int EN_OVLYERR ;
 int SET_CHIMINTEN ;
 int asd_write_reg_dword (struct asd_ha_struct*,int ,int) ;

__attribute__((used)) static inline void asd_enable_ints(struct asd_ha_struct *asd_ha)
{

 asd_write_reg_dword(asd_ha, COMSTATEN,
       EN_CSBUFPERR | EN_CSERR | EN_OVLYERR);

 asd_write_reg_dword(asd_ha, DCHSTATUS, EN_CFIFTOERR);

 asd_write_reg_dword(asd_ha, CHIMINTEN, SET_CHIMINTEN);
}
