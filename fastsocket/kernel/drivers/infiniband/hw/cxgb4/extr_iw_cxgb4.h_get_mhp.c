
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c4iw_mr {int dummy; } ;
struct c4iw_dev {int mmidr; } ;


 struct c4iw_mr* idr_find (int *,int ) ;

__attribute__((used)) static inline struct c4iw_mr *get_mhp(struct c4iw_dev *rhp, u32 mmid)
{
 return idr_find(&rhp->mmidr, mmid);
}
