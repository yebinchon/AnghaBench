
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct src_ent {scalar_t__ next; } ;
struct bnx2x {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int BP_PORT (struct bnx2x*) ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 scalar_t__ SRC_REG_COUNTFREE0 ;
 scalar_t__ SRC_REG_FIRSTFREE0 ;
 scalar_t__ SRC_REG_LASTFREE0 ;
 int U64_HI (scalar_t__) ;
 int U64_LO (scalar_t__) ;
 int bnx2x_wr_64 (struct bnx2x*,scalar_t__,int ,int ) ;

__attribute__((used)) static void bnx2x_src_init_t2(struct bnx2x *bp, struct src_ent *t2,
         dma_addr_t t2_mapping, int src_cid_count)
{
 int i;
 int port = BP_PORT(bp);


 for (i = 0; i < src_cid_count-1; i++)
  t2[i].next = (u64)(t2_mapping +
        (i+1)*sizeof(struct src_ent));


 REG_WR(bp, SRC_REG_COUNTFREE0 + port*4, src_cid_count);

 bnx2x_wr_64(bp, SRC_REG_FIRSTFREE0 + port*16,
      U64_LO(t2_mapping), U64_HI(t2_mapping));

 bnx2x_wr_64(bp, SRC_REG_LASTFREE0 + port*16,
      U64_LO((u64)t2_mapping +
      (src_cid_count-1) * sizeof(struct src_ent)),
      U64_HI((u64)t2_mapping +
      (src_cid_count-1) * sizeof(struct src_ent)));
}
