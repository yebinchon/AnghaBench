
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* read; int* write; } ;


 int IO_MASK (int ,int ) ;
 int R_SERIAL0_READ ;
 TYPE_1__* kgdb_port ;
 int tr_ready ;

void
putDebugChar(int val)
{
 if (!kgdb_port)
  return;

 while (!(*kgdb_port->read & IO_MASK(R_SERIAL0_READ, tr_ready)))
  ;
 *kgdb_port->write = val;
}
