
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_process; } ;
struct raid_set {TYPE_1__ io; } ;


 int atomic_read (int *) ;

__attribute__((used)) static int io_ref(struct raid_set *rs)
{
 return atomic_read(&rs->io.in_process);
}
