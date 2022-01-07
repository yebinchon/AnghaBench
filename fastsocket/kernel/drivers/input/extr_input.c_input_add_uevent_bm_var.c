
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int buflen; int * buf; } ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,char const*) ;
 int input_print_bitmap (int *,int,unsigned long*,int,int ) ;

__attribute__((used)) static int input_add_uevent_bm_var(struct kobj_uevent_env *env,
       const char *name, unsigned long *bitmap, int max)
{
 int len;

 if (add_uevent_var(env, "%s=", name))
  return -ENOMEM;

 len = input_print_bitmap(&env->buf[env->buflen - 1],
     sizeof(env->buf) - env->buflen,
     bitmap, max, 0);
 if (len >= (sizeof(env->buf) - env->buflen))
  return -ENOMEM;

 env->buflen += len;
 return 0;
}
