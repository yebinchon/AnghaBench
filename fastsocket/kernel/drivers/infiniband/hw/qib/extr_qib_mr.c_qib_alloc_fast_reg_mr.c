
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mr {int dummy; } ;
struct qib_mr {struct ib_mr ibmr; } ;
struct ib_pd {int dummy; } ;


 scalar_t__ IS_ERR (struct qib_mr*) ;
 struct qib_mr* alloc_mr (int,struct ib_pd*) ;

struct ib_mr *qib_alloc_fast_reg_mr(struct ib_pd *pd, int max_page_list_len)
{
 struct qib_mr *mr;

 mr = alloc_mr(max_page_list_len, pd);
 if (IS_ERR(mr))
  return (struct ib_mr *)mr;

 return &mr->ibmr;
}
