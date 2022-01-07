
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_read_file (int,void*,int) ;
 int os_seek_file (int,int) ;

__attribute__((used)) static int read_cow_bitmap(int fd, void *buf, int offset, int len)
{
 int err;

 err = os_seek_file(fd, offset);
 if (err < 0)
  return err;

 err = os_read_file(fd, buf, len);
 if (err < 0)
  return err;

 return 0;
}
