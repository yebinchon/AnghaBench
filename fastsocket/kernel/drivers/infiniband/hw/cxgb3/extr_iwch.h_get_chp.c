
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwch_dev {int cqidr; } ;
struct iwch_cq {int dummy; } ;


 struct iwch_cq* idr_find (int *,int ) ;

__attribute__((used)) static inline struct iwch_cq *get_chp(struct iwch_dev *rhp, u32 cqid)
{
 return idr_find(&rhp->cqidr, cqid);
}
