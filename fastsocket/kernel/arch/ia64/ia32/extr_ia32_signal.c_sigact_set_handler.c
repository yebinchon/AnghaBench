
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* sa_handler; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef void* __sighandler_t ;


 scalar_t__ A (int) ;

__attribute__((used)) static inline void
sigact_set_handler (struct k_sigaction *sa, unsigned int handler, unsigned int restorer)
{
 if (handler + 1 <= 2)

  sa->sa.sa_handler = (__sighandler_t) A((int) handler);
 else
  sa->sa.sa_handler = (__sighandler_t) (((unsigned long) restorer << 32) | handler);
}
