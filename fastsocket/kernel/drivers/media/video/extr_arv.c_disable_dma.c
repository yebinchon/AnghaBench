
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M32R_DMAEN_PORTL ;
 int ar_outl (int,int ) ;

__attribute__((used)) static inline void disable_dma(void)
{
 ar_outl(0x8000, M32R_DMAEN_PORTL);
}
