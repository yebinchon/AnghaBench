
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
typedef int off_t ;
struct TYPE_3__ {int * ioc; } ;
typedef TYPE_1__ MPT_SCSI_HOST ;
typedef int MPT_ADAPTER ;


 int mptscsih_host_info (int *,char*,int ,int) ;
 TYPE_1__* shost_priv (struct Scsi_Host*) ;

int
mptscsih_proc_info(struct Scsi_Host *host, char *buffer, char **start, off_t offset,
   int length, int func)
{
 MPT_SCSI_HOST *hd = shost_priv(host);
 MPT_ADAPTER *ioc = hd->ioc;
 int size = 0;

 if (func) {



 } else {
  if (start)
   *start = buffer;

  size = mptscsih_host_info(ioc, buffer, offset, length);
 }

 return size;
}
