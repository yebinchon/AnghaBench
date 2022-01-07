
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adpt_hba ;


 int adpt_i2o_delete_hba (int *) ;
 scalar_t__ adpt_i2o_enable_hba (int *) ;
 scalar_t__ adpt_i2o_systab_send (int *) ;

__attribute__((used)) static int adpt_i2o_online_hba(adpt_hba* pHba)
{
 if (adpt_i2o_systab_send(pHba) < 0) {
  adpt_i2o_delete_hba(pHba);
  return -1;
 }


 if (adpt_i2o_enable_hba(pHba) < 0) {
  adpt_i2o_delete_hba(pHba);
  return -1;
 }


 return 0;
}
