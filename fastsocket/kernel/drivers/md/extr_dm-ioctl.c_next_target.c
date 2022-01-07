
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_target_spec {int dummy; } ;


 int EINVAL ;
 int invalid_str (char*,void*) ;

__attribute__((used)) static int next_target(struct dm_target_spec *last, uint32_t next, void *end,
         struct dm_target_spec **spec, char **target_params)
{
 *spec = (struct dm_target_spec *) ((unsigned char *) last + next);
 *target_params = (char *) (*spec + 1);

 if (*spec < (last + 1))
  return -EINVAL;

 return invalid_str(*target_params, end);
}
