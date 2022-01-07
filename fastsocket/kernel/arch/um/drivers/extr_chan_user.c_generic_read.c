
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EIO ;
 int errno ;
 int read (int,char*,int) ;

int generic_read(int fd, char *c_out, void *unused)
{
 int n;

 n = read(fd, c_out, sizeof(*c_out));
 if (n > 0)
  return n;
 else if (errno == EAGAIN)
  return 0;
 else if (n == 0)
  return -EIO;
 return -errno;
}
