
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct stripe {TYPE_1__ io; } ;


 int stripe_zero_pl_part (struct stripe*,int,int ,int ) ;

__attribute__((used)) static void stripe_zero_chunk(struct stripe *stripe, int p)
{
 if (p > -1)
  stripe_zero_pl_part(stripe, p, 0, stripe->io.size);
}
