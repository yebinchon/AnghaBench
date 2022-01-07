
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RHNCAPINTS ;
 int printf (char*,...) ;
 char** x86_cap_flags ;

int main(void)
{
 int i, j;
 const char *str;

 printf("static const char x86_cap_strs[] =\n");

 for (i = 0; i < RHNCAPINTS; i++) {
  for (j = 0; j < 32; j++) {
   str = x86_cap_flags[i*32+j];

   if (i == RHNCAPINTS-1 && j == 31) {



    if (!str)
     str = "";
    printf("\t\"\\x%02x\\x%02x\"\"%s\"\n",
           i, j, str);
   } else if (str) {
    printf("#if REQUIRED_MASK%d & (1 << %d)\n"
           "\t\"\\x%02x\\x%02x\"\"%s\\0\"\n"
           "#endif\n",
           i, j, i, j, str);
   }
  }
 }
 printf("\t;\n");
 return 0;
}
