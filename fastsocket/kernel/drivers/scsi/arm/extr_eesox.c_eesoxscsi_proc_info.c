
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eesoxscsi_info {int control; int info; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef long off_t ;


 int EESOX_TERM_ENABLE ;
 char* VERSION ;
 int eesoxscsi_set_proc_info (struct Scsi_Host*,char*,int) ;
 int fas216_print_devices (int *,char*) ;
 int fas216_print_host (int *,char*) ;
 int fas216_print_stats (int *,char*) ;
 int sprintf (char*,char*,char*) ;

int eesoxscsi_proc_info(struct Scsi_Host *host, char *buffer, char **start, off_t offset,
       int length, int inout)
{
 struct eesoxscsi_info *info;
 char *p = buffer;
 int pos;

 if (inout == 1)
  return eesoxscsi_set_proc_info(host, buffer, length);

 info = (struct eesoxscsi_info *)host->hostdata;

 p += sprintf(p, "EESOX SCSI driver v%s\n", VERSION);
 p += fas216_print_host(&info->info, p);
 p += sprintf(p, "Term    : o%s\n",
   info->control & EESOX_TERM_ENABLE ? "n" : "ff");

 p += fas216_print_stats(&info->info, p);
 p += fas216_print_devices(&info->info, p);

 *start = buffer + offset;
 pos = p - buffer - offset;
 if (pos > length)
  pos = length;

 return pos;
}
