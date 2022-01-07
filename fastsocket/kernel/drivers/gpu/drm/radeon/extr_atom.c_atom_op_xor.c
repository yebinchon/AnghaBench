
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int atom_exec_context ;


 int SDEBUG (char*) ;
 int U8 (int ) ;
 int atom_get_dst (int *,int,int ,int*,int *,int) ;
 int atom_get_src (int *,int ,int*) ;
 int atom_put_dst (int *,int,int ,int*,int ,int ) ;

__attribute__((used)) static void atom_op_xor(atom_exec_context *ctx, int *ptr, int arg)
{
 uint8_t attr = U8((*ptr)++);
 uint32_t dst, src, saved;
 int dptr = *ptr;
 SDEBUG("   dst: ");
 dst = atom_get_dst(ctx, arg, attr, ptr, &saved, 1);
 SDEBUG("   src: ");
 src = atom_get_src(ctx, attr, ptr);
 dst ^= src;
 SDEBUG("   dst: ");
 atom_put_dst(ctx, arg, attr, &dptr, dst, saved);
}
