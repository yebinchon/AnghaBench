
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ehca_mr_pginfo {int type; int hwpage_size; } ;


 int EFAULT ;



 int PAGE_SIZE ;
 int ehca_gen_err (char*,int) ;
 int ehca_set_pagebuf_fmr (struct ehca_mr_pginfo*,int ,int *) ;
 int ehca_set_pagebuf_phys (struct ehca_mr_pginfo*,int ,int *) ;
 int ehca_set_pagebuf_user1 (struct ehca_mr_pginfo*,int ,int *) ;
 int ehca_set_pagebuf_user2 (struct ehca_mr_pginfo*,int ,int *) ;

int ehca_set_pagebuf(struct ehca_mr_pginfo *pginfo,
       u32 number,
       u64 *kpage)
{
 int ret;

 switch (pginfo->type) {
 case 129:
  ret = ehca_set_pagebuf_phys(pginfo, number, kpage);
  break;
 case 128:
  ret = PAGE_SIZE >= pginfo->hwpage_size ?
   ehca_set_pagebuf_user1(pginfo, number, kpage) :
   ehca_set_pagebuf_user2(pginfo, number, kpage);
  break;
 case 130:
  ret = ehca_set_pagebuf_fmr(pginfo, number, kpage);
  break;
 default:
  ehca_gen_err("bad pginfo->type=%x", pginfo->type);
  ret = -EFAULT;
  break;
 }
 return ret;
}
