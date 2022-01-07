
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENFLAGS () ;
 int STUB_CODE ;
 int STUB_DATA ;
 int map_stub_pages (int,int ,int ,unsigned long) ;
 int of_cloexec (int ) ;
 int of_write (int ) ;
 int os_close_file (int) ;
 int os_open_file (char*,int ,int ) ;
 scalar_t__ skas_needs_stub ;

int new_mm(unsigned long stack)
{
 int fd, err;

 fd = os_open_file("/proc/mm", of_cloexec(of_write(OPENFLAGS())), 0);
 if (fd < 0)
  return fd;

 if (skas_needs_stub) {
  err = map_stub_pages(fd, STUB_CODE, STUB_DATA, stack);
  if (err) {
   os_close_file(fd);
   return err;
  }
 }

 return fd;
}
