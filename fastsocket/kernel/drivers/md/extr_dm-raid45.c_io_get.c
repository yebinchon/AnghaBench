
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_process_max; int in_process; } ;
struct raid_set {TYPE_1__ io; } ;


 int atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;

__attribute__((used)) static void io_get(struct raid_set *rs)
{
 int p = atomic_inc_return(&rs->io.in_process);

 if (p > atomic_read(&rs->io.in_process_max))
  atomic_set(&rs->io.in_process_max, p);
}
