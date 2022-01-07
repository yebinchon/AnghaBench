
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si_sm_data {TYPE_1__* io; } ;
struct TYPE_2__ {unsigned char (* inputb ) (TYPE_1__*,int ) ;} ;


 unsigned char stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static inline unsigned char read_data(struct si_sm_data *kcs)
{
 return kcs->io->inputb(kcs->io, 0);
}
