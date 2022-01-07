
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; } ;
struct stripe {TYPE_1__ io; } ;


 int atomic_read (int *) ;

__attribute__((used)) static int stripe_io_ref(struct stripe *stripe)
{
 return atomic_read(&stripe->io.pending);
}
