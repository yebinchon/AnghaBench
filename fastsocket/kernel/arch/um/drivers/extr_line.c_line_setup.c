
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int dummy; } ;


 int EINVAL ;
 int INIT_ALL ;
 int INIT_ONE ;
 int setup_one_line (struct line*,int,char*,int ,char**) ;
 int simple_strtoul (char*,char**,int ) ;

int line_setup(struct line *lines, unsigned int num, char *init,
        char **error_out)
{
 int i, n, err;
 char *end;

 if (*init == '=') {




  n = -1;
 }
 else {
  n = simple_strtoul(init, &end, 0);
  if (*end != '=') {
   *error_out = "Couldn't parse device number";
   return -EINVAL;
  }
  init = end;
 }
 init++;

 if (n >= (signed int) num) {
  *error_out = "Device number out of range";
  return -EINVAL;
 }
 else if (n >= 0) {
  err = setup_one_line(lines, n, init, INIT_ONE, error_out);
  if (err)
   return err;
 }
 else {
  for(i = 0; i < num; i++) {
   err = setup_one_line(lines, i, init, INIT_ALL,
          error_out);
   if (err)
    return err;
  }
 }
 return n == -1 ? num : n;
}
