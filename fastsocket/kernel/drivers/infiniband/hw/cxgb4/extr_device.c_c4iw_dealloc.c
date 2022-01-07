
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uld_ctx {TYPE_1__* dev; } ;
struct TYPE_4__ {int oc_mw_kva; } ;
struct TYPE_3__ {int ibdev; TYPE_2__ rdev; int mmidr; int qpidr; int cqidr; } ;


 int c4iw_rdev_close (TYPE_2__*) ;
 int ib_dealloc_device (int *) ;
 int idr_destroy (int *) ;
 int iounmap (int ) ;

__attribute__((used)) static void c4iw_dealloc(struct uld_ctx *ctx)
{
 c4iw_rdev_close(&ctx->dev->rdev);
 idr_destroy(&ctx->dev->cqidr);
 idr_destroy(&ctx->dev->qpidr);
 idr_destroy(&ctx->dev->mmidr);
 iounmap(ctx->dev->rdev.oc_mw_kva);
 ib_dealloc_device(&ctx->dev->ibdev);
 ctx->dev = ((void*)0);
}
