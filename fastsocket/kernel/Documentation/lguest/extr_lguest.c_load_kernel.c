
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hdr ;
struct TYPE_4__ {int e_ident; } ;
typedef TYPE_1__ Elf32_Ehdr ;


 int ELFMAG ;
 int SELFMAG ;
 int err (int,char*) ;
 unsigned long load_bzimage (int) ;
 unsigned long map_elf (int,TYPE_1__*) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int read (int,TYPE_1__*,int) ;

__attribute__((used)) static unsigned long load_kernel(int fd)
{
 Elf32_Ehdr hdr;


 if (read(fd, &hdr, sizeof(hdr)) != sizeof(hdr))
  err(1, "Reading kernel");


 if (memcmp(hdr.e_ident, ELFMAG, SELFMAG) == 0)
  return map_elf(fd, &hdr);


 return load_bzimage(fd);
}
