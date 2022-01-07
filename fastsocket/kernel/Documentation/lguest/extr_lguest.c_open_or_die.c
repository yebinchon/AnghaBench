
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,char const*) ;
 int open (char const*,int) ;

__attribute__((used)) static int open_or_die(const char *name, int flags)
{
 int fd = open(name, flags);
 if (fd < 0)
  err(1, "Failed to open %s", name);
 return fd;
}
