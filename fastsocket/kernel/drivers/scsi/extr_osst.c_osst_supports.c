
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int rev; int model; int vendor; } ;



 int strlen (char*) ;
 int strncmp (char*,int ,int ) ;

__attribute__((used)) static int osst_supports(struct scsi_device * SDp)
{
 struct osst_support_data {
  char *vendor;
  char *model;
  char *rev;
  char *driver_hint;
 };

static struct osst_support_data support_list[] = {

  128,
  {((void*)0), }};

 struct osst_support_data *rp;





 for (rp=&(support_list[0]); rp->vendor != ((void*)0); rp++)
  if (!strncmp(rp->vendor, SDp->vendor, strlen(rp->vendor)) &&
      !strncmp(rp->model, SDp->model, strlen(rp->model)) &&
      !strncmp(rp->rev, SDp->rev, strlen(rp->rev)))
   return 1;
 return 0;
}
