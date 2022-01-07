
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int * br; } ;
struct binder_thread {TYPE_2__ stats; } ;
struct TYPE_4__ {int * br; } ;
struct binder_proc {TYPE_1__ stats; } ;
struct TYPE_6__ {int * br; } ;


 size_t ARRAY_SIZE (int *) ;
 size_t _IOC_NR (int ) ;
 TYPE_3__ binder_stats ;

void binder_stat_br(struct binder_proc *proc, struct binder_thread *thread,
      uint32_t cmd)
{
 if (_IOC_NR(cmd) < ARRAY_SIZE(binder_stats.br)) {
  binder_stats.br[_IOC_NR(cmd)]++;
  proc->stats.br[_IOC_NR(cmd)]++;
  thread->stats.br[_IOC_NR(cmd)]++;
 }
}
