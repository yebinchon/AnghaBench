
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cm_control {int rd_dma_go; int cm_control_reg; } ;
typedef int uint64_t ;
struct getdma {int bytes; scalar_t__ localAddr; int intrVector; int intrHostDest; int amoModType; int amoHostDest; int peerIO; int DoneIntEnable; int DoneAmoEnable; int hostAddr; } ;
struct mbcs_soft {struct getdma getdma; void* mmr_base; } ;


 scalar_t__ MB2 ;
 scalar_t__ MB4 ;
 scalar_t__ MB6 ;
 int MBCS_CACHELINE_SIZE ;
 int MBCS_CM_CONTROL ;
 int MBCS_MMR_GET (void*,int ) ;
 int MBCS_MMR_SET (void*,int ,int ) ;
 int mbcs_getdma_set (void*,int ,scalar_t__,int,int,int ,int ,int ,int ,int ,int ,int ) ;
 int tiocx_dma_addr (int ) ;

__attribute__((used)) static inline int mbcs_getdma_start(struct mbcs_soft *soft)
{
 void *mmr_base;
 struct getdma *gdma;
 uint64_t numPkts;
 union cm_control cm_control;

 mmr_base = soft->mmr_base;
 gdma = &soft->getdma;


 if (!gdma->hostAddr)
  return -1;

 numPkts =
     (gdma->bytes + (MBCS_CACHELINE_SIZE - 1)) / MBCS_CACHELINE_SIZE;


 mbcs_getdma_set(mmr_base, tiocx_dma_addr(gdma->hostAddr),
     gdma->localAddr,
     (gdma->localAddr < MB2) ? 0 :
     (gdma->localAddr < MB4) ? 1 :
     (gdma->localAddr < MB6) ? 2 : 3,
     numPkts,
     gdma->DoneAmoEnable,
     gdma->DoneIntEnable,
     gdma->peerIO,
     gdma->amoHostDest,
     gdma->amoModType,
     gdma->intrHostDest, gdma->intrVector);


 cm_control.cm_control_reg = MBCS_MMR_GET(mmr_base, MBCS_CM_CONTROL);
 cm_control.rd_dma_go = 1;
 MBCS_MMR_SET(mmr_base, MBCS_CM_CONTROL, cm_control.cm_control_reg);

 return 0;

}
