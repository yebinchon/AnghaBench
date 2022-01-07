
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 char const* SYM_DRIVER_NAME ;

__attribute__((used)) static const char *sym53c8xx_info (struct Scsi_Host *host)
{
 return SYM_DRIVER_NAME;
}
