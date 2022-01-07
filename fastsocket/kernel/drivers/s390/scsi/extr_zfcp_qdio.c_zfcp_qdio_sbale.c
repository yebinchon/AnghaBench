
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio_queue {TYPE_1__** sbal; } ;
struct qdio_buffer_element {int dummy; } ;
struct TYPE_2__ {struct qdio_buffer_element* element; } ;



__attribute__((used)) static struct qdio_buffer_element *
zfcp_qdio_sbale(struct zfcp_qdio_queue *q, int sbal_idx, int sbale_idx)
{
 return &q->sbal[sbal_idx]->element[sbale_idx];
}
