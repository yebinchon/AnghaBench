
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int VPRINTK (char*) ;

__attribute__((used)) static void scsi_6_lba_len(const u8 *cdb, u64 *plba, u32 *plen)
{
 u64 lba = 0;
 u32 len;

 VPRINTK("six-byte command\n");

 lba |= ((u64)(cdb[1] & 0x1f)) << 16;
 lba |= ((u64)cdb[2]) << 8;
 lba |= ((u64)cdb[3]);

 len = cdb[4];

 *plba = lba;
 *plen = len;
}
