
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int exit (int) ;
 int printf (char*,char const*,char*) ;
 char* strerror (int ) ;

__attribute__((used)) static void bail(const char *error)
{
 printf("%s: %s\n", error, strerror(errno));
 exit(1);
}
