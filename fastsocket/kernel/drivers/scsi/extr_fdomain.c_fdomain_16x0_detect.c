
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {int dummy; } ;


 int * __fdomain_16x0_detect (struct scsi_host_template*) ;
 scalar_t__ fdomain ;
 int fdomain_setup (scalar_t__) ;

__attribute__((used)) static int fdomain_16x0_detect(struct scsi_host_template *tpnt)
{
 if (fdomain)
  fdomain_setup(fdomain);
 return (__fdomain_16x0_detect(tpnt) != ((void*)0));
}
