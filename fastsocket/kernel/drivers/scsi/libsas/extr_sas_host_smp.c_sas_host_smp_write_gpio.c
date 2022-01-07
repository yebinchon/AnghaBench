
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_5__ {TYPE_1__* shost; } ;
struct sas_ha_struct {TYPE_2__ core; } ;
struct TYPE_6__ {int (* lldd_write_gpio ) (struct sas_ha_struct*,int ,int ,int ,int *) ;} ;
struct TYPE_4__ {int transportt; } ;


 int SMP_RESP_FUNC_ACC ;
 int SMP_RESP_FUNC_FAILED ;
 int SMP_RESP_FUNC_UNK ;
 int stub1 (struct sas_ha_struct*,int ,int ,int ,int *) ;
 struct sas_internal* to_sas_internal (int ) ;

__attribute__((used)) static int sas_host_smp_write_gpio(struct sas_ha_struct *sas_ha, u8 *resp_data,
       u8 reg_type, u8 reg_index, u8 reg_count,
       u8 *req_data)
{
 struct sas_internal *i = to_sas_internal(sas_ha->core.shost->transportt);
 int written;

 if (i->dft->lldd_write_gpio == ((void*)0)) {
  resp_data[2] = SMP_RESP_FUNC_UNK;
  return 0;
 }

 written = i->dft->lldd_write_gpio(sas_ha, reg_type, reg_index,
       reg_count, req_data);

 if (written < 0) {
  resp_data[2] = SMP_RESP_FUNC_FAILED;
  written = 0;
 } else
  resp_data[2] = SMP_RESP_FUNC_ACC;

 return written;
}
