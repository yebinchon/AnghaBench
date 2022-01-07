
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;



__attribute__((used)) static inline unsigned
lpfc_cmd_protect(struct scsi_cmnd *sc, int flag)
{
 return 1;
}
