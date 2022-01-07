
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fastpath {scalar_t__ rx_buf_size; } ;
typedef int gfp_t ;


 scalar_t__ NET_SKB_PAD ;
 void* kmalloc (scalar_t__,int ) ;

__attribute__((used)) static void *bnx2x_frag_alloc(const struct bnx2x_fastpath *fp, gfp_t gfp_mask)
{
 return kmalloc(fp->rx_buf_size + NET_SKB_PAD, gfp_mask);
}
