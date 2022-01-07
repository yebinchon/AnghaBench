
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firedtv_receive_context {int context; int buffer; } ;
struct firedtv {struct firedtv_receive_context* backend_data; } ;
struct TYPE_2__ {int card; } ;


 TYPE_1__* device_of (struct firedtv*) ;
 int fw_iso_buffer_destroy (int *,int ) ;
 int fw_iso_context_destroy (int ) ;
 int fw_iso_context_stop (int ) ;
 int kfree (struct firedtv_receive_context*) ;

__attribute__((used)) static void stop_iso(struct firedtv *fdtv)
{
 struct firedtv_receive_context *ctx = fdtv->backend_data;

 fw_iso_context_stop(ctx->context);
 fw_iso_buffer_destroy(&ctx->buffer, device_of(fdtv)->card);
 fw_iso_context_destroy(ctx->context);
 kfree(ctx);
}
