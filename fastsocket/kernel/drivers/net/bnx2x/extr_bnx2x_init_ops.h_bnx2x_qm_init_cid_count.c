
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 int BP_PORT (struct bnx2x*) ;



 scalar_t__ QM_INIT (int) ;
 int QM_REG_CONNNUM_0 ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_qm_init_cid_count(struct bnx2x *bp, int qm_cid_count,
        u8 initop)
{
 int port = BP_PORT(bp);

 if (QM_INIT(qm_cid_count)) {
  switch (initop) {
  case 129:

  case 128:
   REG_WR(bp, QM_REG_CONNNUM_0 + port*4,
          qm_cid_count/16 - 1);
   break;
  case 130:
   break;
  }
 }
}
