
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_transport_template {int create_work_queue; int eh_strategy_handler; int eh_timed_out; } ;
struct sas_internal {struct sas_domain_function_template* dft; } ;
struct sas_domain_function_template {int dummy; } ;


 struct scsi_transport_template* sas_attach_transport (int *) ;
 int sas_scsi_recover_host ;
 int sas_scsi_timed_out ;
 int sft ;
 struct sas_internal* to_sas_internal (struct scsi_transport_template*) ;

struct scsi_transport_template *
sas_domain_attach_transport(struct sas_domain_function_template *dft)
{
 struct scsi_transport_template *stt = sas_attach_transport(&sft);
 struct sas_internal *i;

 if (!stt)
  return stt;

 i = to_sas_internal(stt);
 i->dft = dft;
 stt->create_work_queue = 1;
 stt->eh_timed_out = sas_scsi_timed_out;
 stt->eh_strategy_handler = sas_scsi_recover_host;

 return stt;
}
