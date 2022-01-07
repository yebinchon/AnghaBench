
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_reject_data {char* driver_hint; int * rev; int * model; int * vendor; } ;
struct scsi_device {int rev; int model; int vendor; } ;


 struct st_reject_data* reject_list ;
 int strlen (int *) ;
 int strncmp (int *,int ,int ) ;

__attribute__((used)) static char * st_incompatible(struct scsi_device* SDp)
{
 struct st_reject_data *rp;

 for (rp=&(reject_list[0]); rp->vendor != ((void*)0); rp++)
  if (!strncmp(rp->vendor, SDp->vendor, strlen(rp->vendor)) &&
      !strncmp(rp->model, SDp->model, strlen(rp->model)) &&
      !strncmp(rp->rev, SDp->rev, strlen(rp->rev))) {
   if (rp->driver_hint)
    return rp->driver_hint;
   else
    return "unknown";
  }
 return ((void*)0);
}
