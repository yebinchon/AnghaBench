
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arxescsi_info {int info; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef long off_t ;


 int EINVAL ;
 char* VERSION ;
 int fas216_print_devices (int *,char*) ;
 int fas216_print_host (int *,char*) ;
 int fas216_print_stats (int *,char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int
arxescsi_proc_info(struct Scsi_Host *host, char *buffer, char **start, off_t offset, int length,
     int inout)
{
 struct arxescsi_info *info;
 char *p = buffer;
 int pos;

 info = (struct arxescsi_info *)host->hostdata;
 if (inout == 1)
  return -EINVAL;

 p += sprintf(p, "ARXE 16-bit SCSI driver v%s\n", VERSION);
 p += fas216_print_host(&info->info, p);
 p += fas216_print_stats(&info->info, p);
 p += fas216_print_devices(&info->info, p);

 *start = buffer + offset;
 pos = p - buffer - offset;
 if (pos > length)
  pos = length;

 return pos;
}
