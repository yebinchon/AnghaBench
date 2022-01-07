
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct ata_taskfile {int dummy; } ;
typedef int __le32 ;


 unsigned int ATA_PRD_EOT ;
 unsigned int PDC_20621_DIMM_BASE ;
 unsigned int PDC_20621_DIMM_DATA ;
 unsigned int PDC_DIMM_DATA_STEP ;
 int PDC_DIMM_HPKT_PRD ;
 unsigned int PDC_DIMM_WINDOW_STEP ;
 int VPRINTK (char*,unsigned int,int ,int ) ;
 int cpu_to_le32 (unsigned int) ;

__attribute__((used)) static inline void pdc20621_host_sg(struct ata_taskfile *tf, u8 *buf,
        unsigned int portno,
         unsigned int total_len)
{
 u32 addr;
 unsigned int dw = PDC_DIMM_HPKT_PRD >> 2;
 __le32 *buf32 = (__le32 *) buf;


 addr = PDC_20621_DIMM_BASE + PDC_20621_DIMM_DATA +
        (PDC_DIMM_DATA_STEP * portno);

 buf32[dw] = cpu_to_le32(addr);
 buf32[dw + 1] = cpu_to_le32(total_len | ATA_PRD_EOT);

 VPRINTK("HOST PSG @ %x == (0x%x, 0x%x)\n",
  PDC_20621_DIMM_BASE +
         (PDC_DIMM_WINDOW_STEP * portno) +
         PDC_DIMM_HPKT_PRD,
  buf32[dw], buf32[dw + 1]);
}
