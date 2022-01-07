
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t e_shstrndx; unsigned int e_shnum; } ;
struct TYPE_4__ {int sh_name; } ;
struct TYPE_5__ {char* strtab; TYPE_1__ shdr; } ;


 unsigned int SHN_ABS ;
 unsigned int SHN_COMMON ;
 TYPE_3__ ehdr ;
 TYPE_2__* secs ;

__attribute__((used)) static const char *sec_name(unsigned shndx)
{
 const char *sec_strtab;
 const char *name;
 sec_strtab = secs[ehdr.e_shstrndx].strtab;
 name = "<noname>";
 if (shndx < ehdr.e_shnum) {
  name = sec_strtab + secs[shndx].shdr.sh_name;
 }
 else if (shndx == SHN_ABS) {
  name = "ABSOLUTE";
 }
 else if (shndx == SHN_COMMON) {
  name = "COMMON";
 }
 return name;
}
