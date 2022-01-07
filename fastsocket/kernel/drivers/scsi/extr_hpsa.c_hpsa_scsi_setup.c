
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int devlock; int * scsi_host; scalar_t__ ndevices; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static void hpsa_scsi_setup(struct ctlr_info *h)
{
 h->ndevices = 0;
 h->scsi_host = ((void*)0);
 spin_lock_init(&h->devlock);
}
