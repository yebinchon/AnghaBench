
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_2__ {char* dump_devno; char* dump_wwpn; char* dump_lun; char* dump_bootprog; } ;


 char* IPL_DEVNO ;
 char* IPL_LUN ;
 char* IPL_WWPN ;
 TYPE_1__ g ;
 scalar_t__ read_file (char*,char*,int) ;
 int sprintf (char*,char*,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ write_to_file (char*,char*) ;

__attribute__((used)) static int enable_zfcp_device(void)
{
 char command[1024], file[1024];
 struct stat s;


 if (read_file(IPL_DEVNO, g.dump_devno, sizeof(g.dump_devno)))
  return -1;
 sprintf(file, "/sys/bus/ccw/drivers/zfcp/%s/online", g.dump_devno);
 if (write_to_file(file, "1\n"))
  return -1;


 if (read_file(IPL_WWPN, g.dump_wwpn, sizeof(g.dump_wwpn)))
  return -1;
 sprintf(file, "/sys/bus/ccw/drivers/zfcp/%s/port_add", g.dump_devno);

 if (stat(file, &s) == 0) {
  sprintf(command, "%s\n", g.dump_wwpn);
  if (write_to_file(file, command))
   return -1;
 }


 if (read_file(IPL_LUN, g.dump_lun, sizeof(g.dump_lun)))
  return -1;
 sprintf(file, "/sys/bus/ccw/drivers/zfcp/%s/%s/unit_add", g.dump_devno,
  g.dump_wwpn);
 sprintf(command, "%s\n", g.dump_lun);
 if (write_to_file(file, command))
  return -1;


 read_file("/sys/firmware/ipl/bootprog", g.dump_bootprog,
  sizeof(g.dump_bootprog));

 return 0;
}
