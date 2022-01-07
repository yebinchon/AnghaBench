
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ARRAY_SIZE (char**) ;
 int fatal (char*,int) ;
 char** page_flag_names ;

__attribute__((used)) static char *page_flag_name(uint64_t flags)
{
 static char buf[65];
 int present;
 int i, j;

 for (i = 0, j = 0; i < ARRAY_SIZE(page_flag_names); i++) {
  present = (flags >> i) & 1;
  if (!page_flag_names[i]) {
   if (present)
    fatal("unknown flag bit %d\n", i);
   continue;
  }
  buf[j++] = present ? page_flag_names[i][0] : '_';
 }

 return buf;
}
