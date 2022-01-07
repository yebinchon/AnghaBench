
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char*) ;
 int O_RDONLY ;
 int checked_tmpdir ;
 int close (int) ;
 char* default_tmpdir ;
 int errno ;
 int next (int,char*,int ,char) ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

__attribute__((used)) static void which_tmpdir(void)
{
 int fd, found;
 char buf[128] = { '\0' };

 if (checked_tmpdir)
  return;

 checked_tmpdir = 1;

 printf("Checking for tmpfs mount on /dev/shm...");

 fd = open("/proc/mounts", O_RDONLY);
 if (fd < 0) {
  printf("failed to open /proc/mounts, errno = %d\n", errno);
  return;
 }

 while (1) {
  found = next(fd, buf, ARRAY_SIZE(buf), ' ');
  if (found != 1)
   break;

  if (!strncmp(buf, "/dev/shm", strlen("/dev/shm")))
   goto found;

  found = next(fd, buf, ARRAY_SIZE(buf), '\n');
  if (found != 1)
   break;
 }

err:
 if (found == 0)
  printf("nothing mounted on /dev/shm\n");
 else if (found < 0)
  printf("read returned errno %d\n", -found);

out:
 close(fd);

 return;

found:
 found = next(fd, buf, ARRAY_SIZE(buf), ' ');
 if (found != 1)
  goto err;

 if (strncmp(buf, "tmpfs", strlen("tmpfs"))) {
  printf("not tmpfs\n");
  goto out;
 }

 printf("OK\n");
 default_tmpdir = "/dev/shm";
 goto out;
}
