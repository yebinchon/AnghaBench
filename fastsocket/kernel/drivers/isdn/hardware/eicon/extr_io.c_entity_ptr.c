
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t byte ;
struct TYPE_7__ {scalar_t__ io; } ;
struct TYPE_6__ {TYPE_1__* e_tbl; } ;
struct TYPE_5__ {int * e; } ;
typedef TYPE_2__* PISDN_ADAPTER ;
typedef int ENTITY ;
typedef TYPE_3__ ADAPTER ;



ENTITY * entity_ptr(ADAPTER * a, byte e_no)
{
  PISDN_ADAPTER IoAdapter;
  IoAdapter = (PISDN_ADAPTER) a->io;
  return (IoAdapter->e_tbl[e_no].e);
}
