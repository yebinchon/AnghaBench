
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc390_srb {struct dc390_srb* pNextSRB; } ;
struct dc390_acb {struct dc390_srb* pFreeSRB; } ;


 int DEBUG0 (int ) ;
 int printk (char*,struct dc390_srb*) ;

__attribute__((used)) static __inline__ void dc390_Free_insert (struct dc390_acb* pACB, struct dc390_srb* pSRB)
{
    DEBUG0(printk ("DC390: Free SRB %p\n", pSRB));
    pSRB->pNextSRB = pACB->pFreeSRB;
    pACB->pFreeSRB = pSRB;
}
