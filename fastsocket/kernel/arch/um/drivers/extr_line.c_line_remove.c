
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int dummy; } ;


 int line_setup (struct line*,unsigned int,char*,char**) ;
 int sprintf (char*,char*,int) ;

int line_remove(struct line *lines, unsigned int num, int n, char **error_out)
{
 int err;
 char config[sizeof("conxxxx=none\0")];

 sprintf(config, "%d=none", n);
 err = line_setup(lines, num, config, error_out);
 if (err >= 0)
  err = 0;
 return err;
}
