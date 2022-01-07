
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct zfcp_queue_req {size_t sbal_first; } ;
struct TYPE_4__ {TYPE_1__** sbal; } ;
struct zfcp_qdio {TYPE_2__ req_q; } ;
struct qdio_buffer_element {int length; } ;
struct TYPE_3__ {struct qdio_buffer_element* element; } ;



__attribute__((used)) static inline
void zfcp_qdio_set_data_div(struct zfcp_qdio *qdio,
       struct zfcp_queue_req *q_req, u32 count)
{
 struct qdio_buffer_element *sbale;

 sbale = qdio->req_q.sbal[q_req->sbal_first]->element;
 sbale->length = count;
}
