
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* dump_dir; int dump_nr; scalar_t__ parm_mode; } ;


 int DUMP_FIRST ;
 scalar_t__ PARM_MODE_AUTO_NUM ;
 int PRINT (char*,...) ;
 int PRINT_ERR (char*) ;
 int PRINT_PERR (char*) ;
 int WAIT_TIME_ERASE ;
 TYPE_1__ g ;
 int get_dump_num (char*,int ) ;
 int scanf (char*,char*) ;
 int sleep (int ) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int sync () ;
 int unlink (char*) ;

__attribute__((used)) static int erase_oldest_dump(void)
{
 int dump_nr;
 char dname[1024] = {};
 char answ[1024] = {};

 dump_nr = get_dump_num(g.dump_dir, DUMP_FIRST);
 if (dump_nr < 0) {
  PRINT_ERR("Internal error: dump number cannot be evaluated\n");
  return -1;
 }
 sprintf(dname, "dump.%i", dump_nr);
 if (dump_nr == g.dump_nr) {
  PRINT_ERR("Sorry, cannot delete any more dumps!\n");
  return -1;
 }
 if (g.parm_mode == PARM_MODE_AUTO_NUM) {
  PRINT("Removing oldest dump: '%s'\n", dname);
 } else {
  while ((strcmp(answ, "y") != 0) && (strcmp(answ, "n") != 0)) {
   PRINT("Remove oldest dump: '%s' (y/n)? ", dname);
   scanf("%s", answ);
  }
  if (strcmp(answ, "n") == 0)
   return -1;
 }
 sprintf(dname, "%s/dump.%i", g.dump_dir, dump_nr);
 if (unlink(dname) == -1) {
  PRINT_PERR("Could not remove dump\n");
  return -1;
 }
 sync();




 sleep(WAIT_TIME_ERASE);
 PRINT("Dump removed!\n");
 return 0;
}
