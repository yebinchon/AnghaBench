
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int megasas_generic_reset (struct scsi_cmnd*) ;

__attribute__((used)) static int megasas_reset_device(struct scsi_cmnd *scmd)
{
 int ret;




 ret = megasas_generic_reset(scmd);

 return ret;
}
