
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipath_qp {int s_last_psn; } ;



__attribute__((used)) static inline void update_last_psn(struct ipath_qp *qp, u32 psn)
{
 qp->s_last_psn = psn;
}
