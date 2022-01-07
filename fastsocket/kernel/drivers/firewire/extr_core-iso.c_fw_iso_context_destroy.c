
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_iso_context {struct fw_card* card; } ;
struct fw_card {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* free_iso_context ) (struct fw_iso_context*) ;} ;


 int stub1 (struct fw_iso_context*) ;

void fw_iso_context_destroy(struct fw_iso_context *ctx)
{
 struct fw_card *card = ctx->card;

 card->driver->free_iso_context(ctx);
}
