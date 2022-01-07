
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_csr_iterator {int dummy; } ;




 int fw_csr_iterator_init (struct fw_csr_iterator*,int *) ;
 scalar_t__ fw_csr_iterator_next (struct fw_csr_iterator*,int*,int*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static int units_sprintf(char *buf, u32 *directory)
{
 struct fw_csr_iterator ci;
 int key, value;
 int specifier_id = 0;
 int version = 0;

 fw_csr_iterator_init(&ci, directory);
 while (fw_csr_iterator_next(&ci, &key, &value)) {
  switch (key) {
  case 129:
   specifier_id = value;
   break;
  case 128:
   version = value;
   break;
  }
 }

 return sprintf(buf, "0x%06x:0x%06x ", specifier_id, version);
}
