
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long ssize_t ;


 scalar_t__ MAP_FAILED ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int err (int,char*,unsigned long,unsigned long,unsigned long) ;
 scalar_t__ mmap (void*,unsigned long,int,int,int,unsigned long) ;
 unsigned long pread (int,void*,unsigned long,unsigned long) ;

__attribute__((used)) static void map_at(int fd, void *addr, unsigned long offset, unsigned long len)
{
 ssize_t r;
 if (mmap(addr, len, PROT_READ|PROT_WRITE|PROT_EXEC,
   MAP_FIXED|MAP_PRIVATE, fd, offset) != MAP_FAILED)
  return;


 r = pread(fd, addr, len, offset);
 if (r != len)
  err(1, "Reading offset %lu len %lu gave %zi", offset, len, r);
}
