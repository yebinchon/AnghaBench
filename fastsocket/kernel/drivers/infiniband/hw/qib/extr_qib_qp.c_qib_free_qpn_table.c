
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_qpn_table {TYPE_1__* map; } ;
struct TYPE_2__ {scalar_t__ page; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int free_page (unsigned long) ;

void qib_free_qpn_table(struct qib_qpn_table *qpt)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(qpt->map); i++)
  if (qpt->map[i].page)
   free_page((unsigned long) qpt->map[i].page);
}
