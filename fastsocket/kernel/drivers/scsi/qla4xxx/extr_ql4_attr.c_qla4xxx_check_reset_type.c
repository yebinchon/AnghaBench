
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QL4_SCSI_ADAPTER_RESET ;
 int QL4_SCSI_FIRMWARE_RESET ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int qla4xxx_check_reset_type(char *str)
{
 if (strncmp(str, "adapter", 10) == 0)
  return QL4_SCSI_ADAPTER_RESET;
 else if (strncmp(str, "firmware", 10) == 0)
  return QL4_SCSI_FIRMWARE_RESET;
 else
  return 0;
}
