
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc390_srb {struct dc390_srb* pNextSRB; } ;
struct dc390_dcb {struct dc390_srb* pGoingLast; struct dc390_srb* pGoingSRB; int GoingSRBCnt; } ;


 int DEBUG0 (int ) ;
 int printk (char*,struct dc390_srb*) ;

__attribute__((used)) static __inline__ void dc390_Going_append (struct dc390_dcb* pDCB, struct dc390_srb* pSRB)
{
    pDCB->GoingSRBCnt++;
    DEBUG0(printk("DC390: Append SRB %p to Going\n", pSRB));

    if( pDCB->pGoingSRB )
 pDCB->pGoingLast->pNextSRB = pSRB;
    else
 pDCB->pGoingSRB = pSRB;

    pDCB->pGoingLast = pSRB;

    pSRB->pNextSRB = ((void*)0);
}
