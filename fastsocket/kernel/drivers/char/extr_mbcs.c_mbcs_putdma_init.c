
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct putdma {int DoneIntEnable; } ;


 int memset (struct putdma*,int ,int) ;

__attribute__((used)) static inline void mbcs_putdma_init(struct putdma *pdma)
{
 memset(pdma, 0, sizeof(struct putdma));
 pdma->DoneIntEnable = 1;
}
