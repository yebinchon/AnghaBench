
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct dc390_srb {int SGToBeXferLen; int SGBusAddr; struct scatterlist* pSegmentList; } ;


 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static void inline dc390_start_segment(struct dc390_srb* pSRB)
{
 struct scatterlist *psgl = pSRB->pSegmentList;


 pSRB->SGBusAddr = sg_dma_address(psgl);
 pSRB->SGToBeXferLen = sg_dma_len(psgl);
}
