
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* lscsa; } ;
struct spu_context {TYPE_2__ csa; } ;
struct TYPE_3__ {char* ls; } ;



__attribute__((used)) static char *spu_backing_get_ls(struct spu_context *ctx)
{
 return ctx->csa.lscsa->ls;
}
