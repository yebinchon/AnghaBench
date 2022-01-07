
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {TYPE_1__* counter_dev; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;
struct TYPE_2__ {int (* write_register ) (struct ni_gpct*,unsigned int,int) ;} ;


 int BUG_ON (int) ;
 int NITIO_Num_Registers ;
 int stub1 (struct ni_gpct*,unsigned int,int) ;

__attribute__((used)) static inline void write_register(struct ni_gpct *counter, unsigned bits,
      enum ni_gpct_register reg)
{
 BUG_ON(reg >= NITIO_Num_Registers);
 counter->counter_dev->write_register(counter, bits, reg);
}
