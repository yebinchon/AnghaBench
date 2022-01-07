
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwch_mr {int dummy; } ;
struct iwch_dev {int mmidr; } ;


 struct iwch_mr* idr_find (int *,int ) ;

__attribute__((used)) static inline struct iwch_mr *get_mhp(struct iwch_dev *rhp, u32 mmid)
{
 return idr_find(&rhp->mmidr, mmid);
}
