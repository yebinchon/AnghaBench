
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int crc32 (unsigned char const*,int ) ;
 int printf (char*,...) ;
 int strlen (char*) ;

int main(int argc, char **argv) {
 unsigned int result;
 if (argc != 2) {
  printf("no string passed as argument\n");
  return -1;
 }
 result = crc32((unsigned char const *)argv[1], strlen(argv[1]));
 printf("0x%x\n", result);
 return 0;
}
