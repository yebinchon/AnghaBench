
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int * scsi_host; } ;


 int scsi_host_put (int *) ;
 int scsi_remove_host (int *) ;

__attribute__((used)) static void hpsa_unregister_scsi(struct ctlr_info *h)
{

 scsi_remove_host(h->scsi_host);
 scsi_host_put(h->scsi_host);
 h->scsi_host = ((void*)0);
}
