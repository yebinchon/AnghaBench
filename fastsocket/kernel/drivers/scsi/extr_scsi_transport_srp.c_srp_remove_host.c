
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int shost_gendev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int do_srp_rport_del ;

void srp_remove_host(struct Scsi_Host *shost)
{
 device_for_each_child(&shost->shost_gendev, ((void*)0), do_srp_rport_del);
}
