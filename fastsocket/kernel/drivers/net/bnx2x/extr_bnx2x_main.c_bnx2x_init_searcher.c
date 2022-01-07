
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int t2_mapping; int t2; } ;


 int BP_PORT (struct bnx2x*) ;
 int REG_WR (struct bnx2x*,scalar_t__,int ) ;
 int SRC_CONN_NUM ;
 int SRC_HASH_BITS ;
 scalar_t__ SRC_REG_NUMBER_HASH_BITS0 ;
 int bnx2x_src_init_t2 (struct bnx2x*,int ,int ,int ) ;

__attribute__((used)) static void bnx2x_init_searcher(struct bnx2x *bp)
{
 int port = BP_PORT(bp);
 bnx2x_src_init_t2(bp, bp->t2, bp->t2_mapping, SRC_CONN_NUM);

 REG_WR(bp, SRC_REG_NUMBER_HASH_BITS0 + port*4, SRC_HASH_BITS);
}
