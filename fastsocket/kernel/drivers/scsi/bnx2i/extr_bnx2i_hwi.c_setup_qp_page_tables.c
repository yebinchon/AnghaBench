
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {int sq_mem_size; int rq_mem_size; int cq_mem_size; scalar_t__ cq_pgtbl_virt; scalar_t__ cq_phys; int cq_pgtbl_size; scalar_t__ rq_pgtbl_virt; scalar_t__ rq_phys; int rq_pgtbl_size; scalar_t__ sq_pgtbl_virt; scalar_t__ sq_phys; int sq_pgtbl_size; } ;
struct bnx2i_endpoint {TYPE_2__ qp; TYPE_1__* hba; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_3__ {int cnic_dev_type; } ;


 int BNX2I_NX2_DEV_57710 ;
 int ISCSI_CQ_DB_SIZE ;
 int ISCSI_RQ_DB_SIZE ;
 int ISCSI_SQ_DB_SIZE ;
 int PAGE_SIZE ;
 int memset (scalar_t__,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void setup_qp_page_tables(struct bnx2i_endpoint *ep)
{
 int num_pages;
 u32 *ptbl;
 dma_addr_t page;
 int cnic_dev_10g;

 if (test_bit(BNX2I_NX2_DEV_57710, &ep->hba->cnic_dev_type))
  cnic_dev_10g = 1;
 else
  cnic_dev_10g = 0;


 memset(ep->qp.sq_pgtbl_virt, 0, ep->qp.sq_pgtbl_size);
 num_pages = ep->qp.sq_mem_size / PAGE_SIZE;
 page = ep->qp.sq_phys;

 if (cnic_dev_10g)
  ptbl = (u32 *)((u8 *)ep->qp.sq_pgtbl_virt + ISCSI_SQ_DB_SIZE);
 else
  ptbl = (u32 *) ep->qp.sq_pgtbl_virt;
 while (num_pages--) {
  if (cnic_dev_10g) {

   *ptbl = (u32) page;
   ptbl++;
   *ptbl = (u32) ((u64) page >> 32);
   ptbl++;
   page += PAGE_SIZE;
  } else {


   *ptbl = (u32) ((u64) page >> 32);
   ptbl++;
   *ptbl = (u32) page;
   ptbl++;
   page += PAGE_SIZE;
  }
 }


 memset(ep->qp.rq_pgtbl_virt, 0, ep->qp.rq_pgtbl_size);
 num_pages = ep->qp.rq_mem_size / PAGE_SIZE;
 page = ep->qp.rq_phys;

 if (cnic_dev_10g)
  ptbl = (u32 *)((u8 *)ep->qp.rq_pgtbl_virt + ISCSI_RQ_DB_SIZE);
 else
  ptbl = (u32 *) ep->qp.rq_pgtbl_virt;
 while (num_pages--) {
  if (cnic_dev_10g) {

   *ptbl = (u32) page;
   ptbl++;
   *ptbl = (u32) ((u64) page >> 32);
   ptbl++;
   page += PAGE_SIZE;
  } else {


   *ptbl = (u32) ((u64) page >> 32);
   ptbl++;
   *ptbl = (u32) page;
   ptbl++;
   page += PAGE_SIZE;
  }
 }


 memset(ep->qp.cq_pgtbl_virt, 0, ep->qp.cq_pgtbl_size);
 num_pages = ep->qp.cq_mem_size / PAGE_SIZE;
 page = ep->qp.cq_phys;

 if (cnic_dev_10g)
  ptbl = (u32 *)((u8 *)ep->qp.cq_pgtbl_virt + ISCSI_CQ_DB_SIZE);
 else
  ptbl = (u32 *) ep->qp.cq_pgtbl_virt;
 while (num_pages--) {
  if (cnic_dev_10g) {

   *ptbl = (u32) page;
   ptbl++;
   *ptbl = (u32) ((u64) page >> 32);
   ptbl++;
   page += PAGE_SIZE;
  } else {


   *ptbl = (u32) ((u64) page >> 32);
   ptbl++;
   *ptbl = (u32) page;
   ptbl++;
   page += PAGE_SIZE;
  }
 }
}
