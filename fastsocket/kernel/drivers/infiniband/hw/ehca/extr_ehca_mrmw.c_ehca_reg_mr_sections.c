
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ehca_shca {int dummy; } ;
struct ehca_mr_pginfo {int dummy; } ;
struct ehca_mr {int dummy; } ;
struct TYPE_6__ {TYPE_2__** top; } ;
struct TYPE_5__ {TYPE_1__** dir; } ;
struct TYPE_4__ {int * ent; } ;


 int EHCA_MAP_ENTRIES ;
 scalar_t__ H_PAGE_REGISTERED ;
 scalar_t__ H_SUCCESS ;
 TYPE_3__* ehca_bmap ;
 int ehca_bmap_valid (int ) ;
 scalar_t__ ehca_reg_mr_section (int,int,int,scalar_t__*,struct ehca_shca*,struct ehca_mr*,struct ehca_mr_pginfo*) ;

__attribute__((used)) static u64 ehca_reg_mr_sections(int top, int dir, u64 *kpage,
    struct ehca_shca *shca, struct ehca_mr *mr,
    struct ehca_mr_pginfo *pginfo)
{
 u64 hret = H_SUCCESS;
 int idx;

 for (idx = 0; idx < EHCA_MAP_ENTRIES; idx++) {
  if (!ehca_bmap_valid(ehca_bmap->top[top]->dir[dir]->ent[idx]))
   continue;

  hret = ehca_reg_mr_section(top, dir, idx, kpage, shca, mr,
        pginfo);
  if ((hret != H_SUCCESS) && (hret != H_PAGE_REGISTERED))
    return hret;
 }
 return hret;
}
