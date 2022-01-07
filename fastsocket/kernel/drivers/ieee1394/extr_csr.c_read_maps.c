
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_2__ {int lock; scalar_t__ speed_map; scalar_t__ topology_map; } ;
struct hpsb_host {TYPE_1__ csr; } ;
typedef int quadlet_t ;


 int CSR_REGISTER_BASE ;
 int CSR_SPEED_MAP ;
 char* CSR_TOPOLOGY_MAP ;
 int RCODE_COMPLETE ;
 int memcpy (int *,char const*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int read_maps(struct hpsb_host *host, int nodeid, quadlet_t *buffer,
                     u64 addr, size_t length, u16 fl)
{
 unsigned long flags;
        int csraddr = addr - CSR_REGISTER_BASE;
        const char *src;

        spin_lock_irqsave(&host->csr.lock, flags);

 if (csraddr < CSR_SPEED_MAP) {
                src = ((char *)host->csr.topology_map) + csraddr
                        - CSR_TOPOLOGY_MAP;
        } else {
                src = ((char *)host->csr.speed_map) + csraddr - CSR_SPEED_MAP;
        }

        memcpy(buffer, src, length);
        spin_unlock_irqrestore(&host->csr.lock, flags);
        return RCODE_COMPLETE;
}
