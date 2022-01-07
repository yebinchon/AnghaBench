
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuner {int mode_mask; } ;
typedef enum v4l2_tuner_type { ____Placeholder_v4l2_tuner_type } v4l2_tuner_type ;


 int EINVAL ;

__attribute__((used)) static inline int check_mode(struct tuner *t, enum v4l2_tuner_type mode)
{
 if ((1 << mode & t->mode_mask) == 0)
  return -EINVAL;

 return 0;
}
