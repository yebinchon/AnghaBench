
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si_sm_data {TYPE_1__* io; } ;
struct TYPE_2__ {int (* outputb ) (TYPE_1__*,int,unsigned char) ;} ;


 int stub1 (TYPE_1__*,int,unsigned char) ;

__attribute__((used)) static inline void write_smic_control(struct si_sm_data *smic,
          unsigned char control)
{
 smic->io->outputb(smic->io, 1, control);
}
