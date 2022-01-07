
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport_identifiers {int dummy; } ;
struct fc_vport {int dummy; } ;
struct Scsi_Host {int shost_gendev; } ;


 int fc_vport_setup (struct Scsi_Host*,int,int *,struct fc_vport_identifiers*,struct fc_vport**) ;

struct fc_vport *
fc_vport_create(struct Scsi_Host *shost, int channel,
 struct fc_vport_identifiers *ids)
{
 int stat;
 struct fc_vport *vport;

 stat = fc_vport_setup(shost, channel, &shost->shost_gendev,
   ids, &vport);
 return stat ? ((void*)0) : vport;
}
