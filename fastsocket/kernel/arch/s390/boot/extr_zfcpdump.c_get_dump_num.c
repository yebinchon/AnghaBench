
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 int DUMP_FIRST ;
 int DUMP_LAST ;
 int MAX (int,int) ;
 int MIN (int,int) ;
 int NO_DUMP ;
 int PRINT_PERR (char*) ;
 int closedir (int *) ;
 scalar_t__ isdigit (char) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int sscanf (int ,char*,...) ;

__attribute__((used)) static int get_dump_num(const char *dumpdir, int mode)
{
 DIR *dir = ((void*)0);
 struct dirent *dir_ent;
 int dump_found, rc;

 rc = 0;
 dump_found = 0;
 dir = opendir(dumpdir);
 if (!dir) {
  PRINT_PERR("Cannot evalute dump number\n");
  return -2;
 }

 while ((dir_ent = readdir(dir))) {
  int num;
  if (sscanf(dir_ent->d_name, "dump.%ui", &num) == 1) {
   char suffix[1024] = {};







   sscanf(dir_ent->d_name, "dump.%s", suffix);
   if (suffix[0] == '-')
    continue;
   if ((suffix[0] == '0') && isdigit(suffix[1]))
    continue;
   if (!dump_found) {
    dump_found = 1;
    rc = num;
   } else if (mode == DUMP_LAST) {
    rc = MAX(num, rc);
   } else if (mode == DUMP_FIRST) {
    rc = MIN(num, rc);
   }
  }
 }
 if (!dump_found)
  rc = NO_DUMP;
 closedir(dir);

 return rc;
}
