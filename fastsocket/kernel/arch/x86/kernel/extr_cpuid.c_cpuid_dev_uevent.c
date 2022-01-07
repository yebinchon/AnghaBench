
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int add_uevent_var (struct kobj_uevent_env*,char*,char*) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int print_cpu_modalias (int *,int *,char*) ;

__attribute__((used)) static int cpuid_dev_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 char *buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (buf) {
  print_cpu_modalias(((void*)0), ((void*)0), buf);
  add_uevent_var(env, "MODALIAS=%s", buf);
  kfree(buf);
 }
 return 0;
}
