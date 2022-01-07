
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_arg_set {int dummy; } ;
struct dm_arg {int dummy; } ;


 int validate_next_arg (struct dm_arg*,struct dm_arg_set*,unsigned int*,char**,int ) ;

int dm_read_arg(struct dm_arg *arg, struct dm_arg_set *arg_set,
  unsigned *value, char **error)
{
 return validate_next_arg(arg, arg_set, value, error, 0);
}
