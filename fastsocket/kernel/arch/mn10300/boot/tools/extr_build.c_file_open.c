
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int die (char*,char const*) ;
 scalar_t__ fd ;
 scalar_t__ open (char const*,int ,int ) ;

void file_open(const char *name)
{
 fd = open(name, O_RDONLY, 0);
 if (fd < 0)
  die("Unable to open `%s': %m", name);
}
