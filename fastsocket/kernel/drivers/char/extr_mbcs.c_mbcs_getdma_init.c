
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getdma {int DoneIntEnable; } ;


 int memset (struct getdma*,int ,int) ;

__attribute__((used)) static inline void mbcs_getdma_init(struct getdma *gdma)
{
 memset(gdma, 0, sizeof(struct getdma));
 gdma->DoneIntEnable = 1;
}
