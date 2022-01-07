
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int atom_exec_context ;


 int ATOM_SRC_BYTE0 ;
 int SDEBUG (char*,...) ;
 int U8 (int ) ;
 int* atom_def_dst ;
 int atom_get_dst (int *,int,int,int*,int*,int) ;
 int atom_get_src_direct (int *,int ,int*) ;
 int atom_put_dst (int *,int,int,int*,int,int) ;

__attribute__((used)) static void atom_op_shift_right(atom_exec_context *ctx, int *ptr, int arg)
{
 uint8_t attr = U8((*ptr)++), shift;
 uint32_t saved, dst;
 int dptr = *ptr;
 attr &= 0x38;
 attr |= atom_def_dst[attr >> 3] << 6;
 SDEBUG("   dst: ");
 dst = atom_get_dst(ctx, arg, attr, ptr, &saved, 1);
 shift = atom_get_src_direct(ctx, ATOM_SRC_BYTE0, ptr);
 SDEBUG("   shift: %d\n", shift);
 dst >>= shift;
 SDEBUG("   dst: ");
 atom_put_dst(ctx, arg, attr, &dptr, dst, saved);
}
