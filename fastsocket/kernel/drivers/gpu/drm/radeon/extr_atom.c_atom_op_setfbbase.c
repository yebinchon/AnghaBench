
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ atom_exec_context ;
struct TYPE_5__ {int fb_base; } ;


 int SDEBUG (char*) ;
 int U8 (int ) ;
 int atom_get_src (TYPE_2__*,int ,int*) ;

__attribute__((used)) static void atom_op_setfbbase(atom_exec_context *ctx, int *ptr, int arg)
{
 uint8_t attr = U8((*ptr)++);
 SDEBUG("   fb_base: ");
 ctx->ctx->fb_base = atom_get_src(ctx, attr, ptr);
}
