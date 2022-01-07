
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int close (int) ;
 int err (int,char*,unsigned int) ;
 unsigned int getpagesize () ;
 void* mmap (int *,unsigned int,int,int ,int,int ) ;
 int open_or_die (char*,int ) ;

__attribute__((used)) static void *map_zeroed_pages(unsigned int num)
{
 int fd = open_or_die("/dev/zero", O_RDONLY);
 void *addr;





 addr = mmap(((void*)0), getpagesize() * num,
      PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE, fd, 0);
 if (addr == MAP_FAILED)
  err(1, "Mmaping %u pages of /dev/zero", num);





 close(fd);

 return addr;
}
