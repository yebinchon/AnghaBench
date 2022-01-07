
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILEHASH ;
 char __tracedata_end ;
 char __tracedata_start ;
 unsigned int hash_string (unsigned short,char const*,int ) ;
 int printk (char*,char const*,unsigned short) ;

__attribute__((used)) static int show_file_hash(unsigned int value)
{
 int match;
 char *tracedata;

 match = 0;
 for (tracedata = &__tracedata_start ; tracedata < &__tracedata_end ;
   tracedata += 2 + sizeof(unsigned long)) {
  unsigned short lineno = *(unsigned short *)tracedata;
  const char *file = *(const char **)(tracedata + 2);
  unsigned int hash = hash_string(lineno, file, FILEHASH);
  if (hash != value)
   continue;
  printk("  hash matches %s:%u\n", file, lineno);
  match++;
 }
 return match;
}
