
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AS_Host ;


 int DMAC_TXADRHI ;
 int DMAC_TXADRLO ;
 int DMAC_TXADRMD ;
 int dmac_read (int *,int ) ;

__attribute__((used)) static inline unsigned int dmac_address(AS_Host *host)
{
    return dmac_read(host, DMAC_TXADRHI) << 16 |
    dmac_read(host, DMAC_TXADRMD) << 8 |
    dmac_read(host, DMAC_TXADRLO);
}
