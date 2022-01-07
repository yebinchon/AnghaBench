
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* read; } ;


 unsigned long IO_MASK (int ,int ) ;
 int R_SERIAL0_READ ;
 int data_avail ;
 int data_in ;
 TYPE_1__* kgdb_port ;

int
getDebugChar(void)
{
 unsigned long readval;

 if (!kgdb_port)
  return 0;

 do {
  readval = *kgdb_port->read;
 } while (!(readval & IO_MASK(R_SERIAL0_READ, data_avail)));

 return (readval & IO_MASK(R_SERIAL0_READ, data_in));
}
