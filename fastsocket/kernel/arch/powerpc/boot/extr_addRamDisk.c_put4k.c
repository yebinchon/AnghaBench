
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fwrite (char*,int,int,int *) ;

__attribute__((used)) static void put4k(FILE *file, char *buf )
{
 fwrite(buf, 1, 4096, file);
}
