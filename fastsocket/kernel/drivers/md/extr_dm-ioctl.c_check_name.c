
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMWARN (char*) ;
 int EINVAL ;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static int check_name(const char *name)
{
 if (strchr(name, '/')) {
  DMWARN("invalid device name");
  return -EINVAL;
 }

 return 0;
}
