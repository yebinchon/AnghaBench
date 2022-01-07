
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIT_MAJOR (unsigned long) ;
 int FIT_MINOR (unsigned long) ;
 unsigned int FIT_TYPE (unsigned long) ;
 char* fit_type_name (unsigned int) ;
 int sprintf (char*,char*,unsigned int,char*,int,int,unsigned long,unsigned int) ;

__attribute__((used)) static int dump_fit_entry(char *page, unsigned long *fentry)
{
 unsigned type;

 type = FIT_TYPE(fentry[1]);
 return sprintf(page, "%02x %-25s %x.%02x %016lx %u\n",
         type,
         fit_type_name(type),
         FIT_MAJOR(fentry[1]), FIT_MINOR(fentry[1]),
         fentry[0],

         (unsigned)(fentry[1] & 0xffffff) * 16);
}
