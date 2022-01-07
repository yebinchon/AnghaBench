
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct dc390_srb {void* SGToBeXferLen; unsigned long SGBusAddr; unsigned long TotalXferredLen; } ;



__attribute__((used)) static unsigned long inline dc390_advance_segment(struct dc390_srb* pSRB, u32 residue)
{
 unsigned long xfer = pSRB->SGToBeXferLen - residue;


 pSRB->SGBusAddr += xfer;
 pSRB->TotalXferredLen += xfer;
 pSRB->SGToBeXferLen = residue;

 return xfer;
}
