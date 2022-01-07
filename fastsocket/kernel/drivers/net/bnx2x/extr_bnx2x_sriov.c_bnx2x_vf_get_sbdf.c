
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x_virtf {int devfn; int bus; } ;
struct bnx2x {int dummy; } ;



__attribute__((used)) static inline void bnx2x_vf_get_sbdf(struct bnx2x *bp,
         struct bnx2x_virtf *vf, u32 *sbdf)
{
 *sbdf = vf->devfn | (vf->bus << 8);
}
