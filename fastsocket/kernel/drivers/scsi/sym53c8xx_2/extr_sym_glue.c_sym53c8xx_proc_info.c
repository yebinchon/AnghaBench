
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;
typedef int off_t ;


 int EINVAL ;
 int sym_host_info (struct Scsi_Host*,char*,int ,int) ;
 int sym_user_command (struct Scsi_Host*,char*,int) ;

__attribute__((used)) static int sym53c8xx_proc_info(struct Scsi_Host *shost, char *buffer,
   char **start, off_t offset, int length, int func)
{
 int retv;

 if (func) {



  retv = -EINVAL;

 } else {
  if (start)
   *start = buffer;



  retv = -EINVAL;

 }

 return retv;
}
