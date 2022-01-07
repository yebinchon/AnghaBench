
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int open (char const*,int) ;
 int perror (char const*) ;

__attribute__((used)) static int checked_open(const char *pathname, int flags)
{
 int fd = open(pathname, flags);

 if (fd < 0) {
  perror(pathname);
  exit(EXIT_FAILURE);
 }

 return fd;
}
