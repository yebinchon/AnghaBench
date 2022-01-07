
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int O_RDONLY ;
 int close (int) ;
 int err (int,char*,char const*) ;
 int from_guest_phys (unsigned long) ;
 scalar_t__ fstat (int,struct stat*) ;
 int map_at (int,int ,int ,int ) ;
 int open_or_die (char const*,int ) ;
 unsigned long page_align (int ) ;
 int verbose (char*,char const*,unsigned long,void*) ;

__attribute__((used)) static unsigned long load_initrd(const char *name, unsigned long mem)
{
 int ifd;
 struct stat st;
 unsigned long len;

 ifd = open_or_die(name, O_RDONLY);

 if (fstat(ifd, &st) < 0)
  err(1, "fstat() on initrd '%s'", name);





 len = page_align(st.st_size);
 map_at(ifd, from_guest_phys(mem - len), 0, st.st_size);




 close(ifd);
 verbose("mapped initrd %s size=%lu @ %p\n", name, len, (void*)mem-len);


 return len;
}
