
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_transport_template {int dummy; } ;


 int sas_release_transport (struct scsi_transport_template*) ;

void sas_domain_release_transport(struct scsi_transport_template *stt)
{
 sas_release_transport(stt);
}
