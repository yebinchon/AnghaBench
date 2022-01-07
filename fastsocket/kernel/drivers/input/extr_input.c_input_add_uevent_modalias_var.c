
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int buflen; int * buf; } ;
struct input_dev {int dummy; } ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*) ;
 int input_print_modalias (int *,int,struct input_dev*,int ) ;

__attribute__((used)) static int input_add_uevent_modalias_var(struct kobj_uevent_env *env,
      struct input_dev *dev)
{
 int len;

 if (add_uevent_var(env, "MODALIAS="))
  return -ENOMEM;

 len = input_print_modalias(&env->buf[env->buflen - 1],
       sizeof(env->buf) - env->buflen,
       dev, 0);
 if (len >= (sizeof(env->buf) - env->buflen))
  return -ENOMEM;

 env->buflen += len;
 return 0;
}
