
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parm_part; } ;


 char* DEV_SCSI ;
 int DUMP_DIR ;
 int PRINT_PERR (char*) ;
 int PRINT_TRACE (char*) ;
 int atoi (int ) ;
 int execl (char*,char*,char*,char*,int *) ;
 int exit (int) ;
 int fork () ;
 TYPE_1__ g ;
 scalar_t__ mount (char*,int ,char*,int ,int *) ;
 int sprintf (char*,char*,char*,int ) ;
 int waitpid (int,int *,int ) ;

__attribute__((used)) static int mount_dump_device(void)
{
 int pid;
 char dump_part[16];

 PRINT_TRACE("e2fsck\n");
 sprintf(dump_part, "%s%i", DEV_SCSI, atoi(g.parm_part));

 pid = fork();
 if (pid < 0) {
  PRINT_PERR("fork failed\n");
  return -1;
 } else if (pid == 0) {
  execl("/bin/e2fsck", "e2fsck", dump_part, "-y", ((void*)0));
  execl("/sbin/e2fsck", "e2fsck", dump_part, "-y", ((void*)0));
  exit(1);
 } else {
  waitpid(pid, ((void*)0), 0);
 }

 PRINT_TRACE("mount\n");
 if (mount(dump_part, DUMP_DIR, "ext4", 0, ((void*)0)) == 0)
  return 0;
 if (mount(dump_part, DUMP_DIR, "ext3", 0, ((void*)0)) == 0)
  return 0;
 if (mount(dump_part, DUMP_DIR, "ext2", 0, ((void*)0)) != 0) {
  PRINT_PERR("mount failed\n");
  return -1;
 }
 return 0;
}
