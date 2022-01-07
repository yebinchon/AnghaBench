
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sbal; } ;
struct TYPE_3__ {int sbal; } ;
struct zfcp_qdio {TYPE_2__ resp_q; TYPE_1__ req_q; } ;
struct qdio_initialize {int dummy; } ;


 int ENOMEM ;
 int qdio_allocate (struct qdio_initialize*) ;
 scalar_t__ zfcp_qdio_buffers_enqueue (int ) ;
 int zfcp_qdio_setup_init_data (struct qdio_initialize*,struct zfcp_qdio*) ;

__attribute__((used)) static int zfcp_qdio_allocate(struct zfcp_qdio *qdio)
{
 struct qdio_initialize init_data;

 if (zfcp_qdio_buffers_enqueue(qdio->req_q.sbal) ||
     zfcp_qdio_buffers_enqueue(qdio->resp_q.sbal))
  return -ENOMEM;

 zfcp_qdio_setup_init_data(&init_data, qdio);

 return qdio_allocate(&init_data);
}
