
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 int CHIP_IS_E1H (struct bnx2x*) ;



 int QM_INIT (int) ;
 int QM_REG_BASEADDR ;
 int QM_REG_BASEADDR_EXT_A ;
 int QM_REG_PTRTBL ;
 int QM_REG_PTRTBL_EXT_A ;
 int bnx2x_qm_set_ptr_table (struct bnx2x*,int,int ,int ) ;

__attribute__((used)) static void bnx2x_qm_init_ptr_table(struct bnx2x *bp, int qm_cid_count,
        u8 initop)
{
 if (!QM_INIT(qm_cid_count))
  return;

 switch (initop) {
 case 129:

 case 128:
  bnx2x_qm_set_ptr_table(bp, qm_cid_count,
           QM_REG_BASEADDR, QM_REG_PTRTBL);
  if (CHIP_IS_E1H(bp))
   bnx2x_qm_set_ptr_table(bp, qm_cid_count,
            QM_REG_BASEADDR_EXT_A,
            QM_REG_PTRTBL_EXT_A);
  break;
 case 130:
  break;
 }
}
