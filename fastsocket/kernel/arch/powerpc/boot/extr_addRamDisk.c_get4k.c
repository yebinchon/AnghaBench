
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned int fread (char*,int,int,int *) ;

__attribute__((used)) static void get4k(FILE *file, char *buf )
{
 unsigned j;
 unsigned num = fread(buf, 1, 4096, file);
 for ( j=num; j<4096; ++j )
  buf[j] = 0;
}
