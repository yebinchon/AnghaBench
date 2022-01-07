
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxio_hal_resource {int cqid_fifo; } ;


 int cxio_hal_put_resource (int ,int ) ;

void cxio_hal_put_cqid(struct cxio_hal_resource *rscp, u32 cqid)
{
 cxio_hal_put_resource(rscp->cqid_fifo, cqid);
}
