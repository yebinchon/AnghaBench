
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry_number; } ;
typedef TYPE_1__ user_desc_t ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOSYS ;
 int GDT_ENTRY_TLS_MIN_I386 ;
 int GDT_ENTRY_TLS_MIN_X86_64 ;
 int __NR_get_thread_area ;
 scalar_t__ errno ;
 scalar_t__ syscall (int ,TYPE_1__*) ;

void check_host_supports_tls(int *supports_tls, int *tls_min) {

 int val[] = {GDT_ENTRY_TLS_MIN_I386, GDT_ENTRY_TLS_MIN_X86_64};
 int i;

 for (i = 0; i < ARRAY_SIZE(val); i++) {
  user_desc_t info;
  info.entry_number = val[i];

  if (syscall(__NR_get_thread_area, &info) == 0) {
   *tls_min = val[i];
   *supports_tls = 1;
   return;
  } else {
   if (errno == EINVAL)
    continue;
   else if (errno == ENOSYS)
    *supports_tls = 0;
    return;
  }
 }

 *supports_tls = 0;
}
