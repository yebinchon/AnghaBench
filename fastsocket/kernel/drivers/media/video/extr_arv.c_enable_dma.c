
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M32R_DMAEN_PORTL ;
 int ar_outl (int,int ) ;

__attribute__((used)) static inline void enable_dma(void)
{
 ar_outl(0x8080, M32R_DMAEN_PORTL);
}
