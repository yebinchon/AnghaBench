
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atp_unit {TYPE_1__** id; int pdev; } ;
struct Scsi_Host {int hostdata; } ;
struct TYPE_2__ {int * prd_table; int prd_bus; } ;


 int pci_free_consistent (int ,int,int *,int ) ;

__attribute__((used)) static void atp870u_free_tables(struct Scsi_Host *host)
{
 struct atp_unit *atp_dev = (struct atp_unit *)&host->hostdata;
 int j, k;
 for (j=0; j < 2; j++) {
  for (k = 0; k < 16; k++) {
   if (!atp_dev->id[j][k].prd_table)
    continue;
   pci_free_consistent(atp_dev->pdev, 1024, atp_dev->id[j][k].prd_table, atp_dev->id[j][k].prd_bus);
   atp_dev->id[j][k].prd_table = ((void*)0);
  }
 }
}
