
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u32 ;


 int DMA_NOTIFIER_OFFSET_BASE ;
 int DMA_NOTIFIER_SIZE ;

__attribute__((used)) static u32 *ps3vram_get_notifier(void *reports, int notifier)
{
 return reports + DMA_NOTIFIER_OFFSET_BASE +
        DMA_NOTIFIER_SIZE * notifier;
}
