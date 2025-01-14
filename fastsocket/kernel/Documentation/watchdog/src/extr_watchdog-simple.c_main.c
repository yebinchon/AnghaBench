
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int O_WRONLY ;
 int close (int) ;
 int exit (int ) ;
 int fsync (int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int sleep (int) ;
 int write (int,char*,int) ;

int main(void)
{
 int fd = open("/dev/watchdog", O_WRONLY);
 int ret = 0;
 if (fd == -1) {
  perror("watchdog");
  exit(EXIT_FAILURE);
 }
 while (1) {
  ret = write(fd, "\0", 1);
  if (ret != 1) {
   ret = -1;
   break;
  }
  ret = fsync(fd);
  if (ret)
   break;
  sleep(10);
 }
 close(fd);
 return ret;
}
