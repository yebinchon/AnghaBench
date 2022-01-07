
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {TYPE_1__* phba; } ;
struct TYPE_2__ {char* ModelName; } ;


 int FW_REV_STR_SIZE ;
 int lpfc_decode_firmware_rev (TYPE_1__*,char*,int ) ;
 char* lpfc_release_version ;
 int snprintf (char*,size_t,char*,char*,char*,char*) ;

int
lpfc_vport_symbolic_node_name(struct lpfc_vport *vport, char *symbol,
 size_t size)
{
 char fwrev[FW_REV_STR_SIZE];
 int n;

 lpfc_decode_firmware_rev(vport->phba, fwrev, 0);

 n = snprintf(symbol, size, "Emulex %s FV%s DV%s",
  vport->phba->ModelName, fwrev, lpfc_release_version);
 return n;
}
