
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV_ZCORE_REIPL ;
 int LINUX_REBOOT_CMD_POWER_OFF ;
 int O_WRONLY ;
 int REIPL ;
 int WAIT_TIME_END ;
 int close (int) ;
 int open (int ,int ,int ) ;
 int reboot (int ) ;
 int sleep (int ) ;
 int write (int,int ,int) ;

__attribute__((used)) static void terminate(void)
{
 int fd;

 sleep(WAIT_TIME_END);
 fd = open(DEV_ZCORE_REIPL, O_WRONLY, 0);
 if (fd == -1)
  goto no_reipl;
 write(fd, REIPL, 1);
 close(fd);
no_reipl:
 reboot(LINUX_REBOOT_CMD_POWER_OFF);
}
