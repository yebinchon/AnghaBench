
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c4iw_dev {int cqidr; } ;
struct c4iw_cq {int dummy; } ;


 struct c4iw_cq* idr_find (int *,int ) ;

__attribute__((used)) static inline struct c4iw_cq *get_chp(struct c4iw_dev *rhp, u32 cqid)
{
 return idr_find(&rhp->cqidr, cqid);
}
