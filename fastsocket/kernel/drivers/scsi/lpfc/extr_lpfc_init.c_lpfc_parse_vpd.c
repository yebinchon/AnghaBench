
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int pport_name_sta; } ;
struct lpfc_hba {int* SerialNumber; int* ModelDesc; int* ModelName; int* ProgramType; int* Port; TYPE_1__ sli4_hba; int sli_rev; int vpd_flag; } ;


 int KERN_INFO ;
 int LOG_INIT ;
 int LPFC_SLI4_PPNAME_GET ;
 int LPFC_SLI4_PPNAME_NON ;
 int LPFC_SLI_REV4 ;
 int VPD_MODEL_DESC ;
 int VPD_MODEL_NAME ;
 int VPD_PORT ;
 int VPD_PROGRAM_TYPE ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int ,int ,int ) ;

int
lpfc_parse_vpd(struct lpfc_hba *phba, uint8_t *vpd, int len)
{
 uint8_t lenlo, lenhi;
 int Length;
 int i, j;
 int finished = 0;
 int index = 0;

 if (!vpd)
  return 0;


 lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
   "0455 Vital Product Data: x%x x%x x%x x%x\n",
   (uint32_t) vpd[0], (uint32_t) vpd[1], (uint32_t) vpd[2],
   (uint32_t) vpd[3]);
 while (!finished && (index < (len - 4))) {
  switch (vpd[index]) {
  case 0x82:
  case 0x91:
   index += 1;
   lenlo = vpd[index];
   index += 1;
   lenhi = vpd[index];
   index += 1;
   i = ((((unsigned short)lenhi) << 8) + lenlo);
   index += i;
   break;
  case 0x90:
   index += 1;
   lenlo = vpd[index];
   index += 1;
   lenhi = vpd[index];
   index += 1;
   Length = ((((unsigned short)lenhi) << 8) + lenlo);
   if (Length > len - index)
    Length = len - index;
   while (Length > 0) {

   if ((vpd[index] == 'S') && (vpd[index+1] == 'N')) {
    index += 2;
    i = vpd[index];
    index += 1;
    j = 0;
    Length -= (3+i);
    while(i--) {
     phba->SerialNumber[j++] = vpd[index++];
     if (j == 31)
      break;
    }
    phba->SerialNumber[j] = 0;
    continue;
   }
   else if ((vpd[index] == 'V') && (vpd[index+1] == '1')) {
    phba->vpd_flag |= VPD_MODEL_DESC;
    index += 2;
    i = vpd[index];
    index += 1;
    j = 0;
    Length -= (3+i);
    while(i--) {
     phba->ModelDesc[j++] = vpd[index++];
     if (j == 255)
      break;
    }
    phba->ModelDesc[j] = 0;
    continue;
   }
   else if ((vpd[index] == 'V') && (vpd[index+1] == '2')) {
    phba->vpd_flag |= VPD_MODEL_NAME;
    index += 2;
    i = vpd[index];
    index += 1;
    j = 0;
    Length -= (3+i);
    while(i--) {
     phba->ModelName[j++] = vpd[index++];
     if (j == 79)
      break;
    }
    phba->ModelName[j] = 0;
    continue;
   }
   else if ((vpd[index] == 'V') && (vpd[index+1] == '3')) {
    phba->vpd_flag |= VPD_PROGRAM_TYPE;
    index += 2;
    i = vpd[index];
    index += 1;
    j = 0;
    Length -= (3+i);
    while(i--) {
     phba->ProgramType[j++] = vpd[index++];
     if (j == 255)
      break;
    }
    phba->ProgramType[j] = 0;
    continue;
   }
   else if ((vpd[index] == 'V') && (vpd[index+1] == '4')) {
    phba->vpd_flag |= VPD_PORT;
    index += 2;
    i = vpd[index];
    index += 1;
    j = 0;
    Length -= (3+i);
    while(i--) {
     if ((phba->sli_rev == LPFC_SLI_REV4) &&
         (phba->sli4_hba.pport_name_sta ==
          LPFC_SLI4_PPNAME_GET)) {
      j++;
      index++;
     } else
      phba->Port[j++] = vpd[index++];
     if (j == 19)
      break;
    }
    if ((phba->sli_rev != LPFC_SLI_REV4) ||
        (phba->sli4_hba.pport_name_sta ==
         LPFC_SLI4_PPNAME_NON))
     phba->Port[j] = 0;
    continue;
   }
   else {
    index += 2;
    i = vpd[index];
    index += 1;
    index += i;
    Length -= (3 + i);
   }
  }
  finished = 0;
  break;
  case 0x78:
   finished = 1;
   break;
  default:
   index ++;
   break;
  }
 }

 return(1);
}
