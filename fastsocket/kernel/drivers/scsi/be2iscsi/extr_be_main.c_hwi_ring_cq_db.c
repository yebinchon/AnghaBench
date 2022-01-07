
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct beiscsi_hba {scalar_t__ db_va; } ;


 unsigned int DB_CQ_NUM_POPPED_SHIFT ;
 scalar_t__ DB_CQ_OFFSET ;
 int DB_CQ_REARM_SHIFT ;
 unsigned int DB_CQ_RING_ID_MASK ;
 int iowrite32 (unsigned int,scalar_t__) ;

__attribute__((used)) static void hwi_ring_cq_db(struct beiscsi_hba *phba,
      unsigned int id, unsigned int num_processed,
      unsigned char rearm, unsigned char event)
{
 u32 val = 0;
 val |= id & DB_CQ_RING_ID_MASK;
 if (rearm)
  val |= 1 << DB_CQ_REARM_SHIFT;
 val |= num_processed << DB_CQ_NUM_POPPED_SHIFT;
 iowrite32(val, phba->db_va + DB_CQ_OFFSET);
}
