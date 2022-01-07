
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ata_taskfile {int hob_lbah; int hob_lbam; int hob_lbal; int lbah; int lbam; int lbal; } ;



u64 ata_tf_to_lba48(const struct ata_taskfile *tf)
{
 u64 sectors = 0;

 sectors |= ((u64)(tf->hob_lbah & 0xff)) << 40;
 sectors |= ((u64)(tf->hob_lbam & 0xff)) << 32;
 sectors |= ((u64)(tf->hob_lbal & 0xff)) << 24;
 sectors |= (tf->lbah & 0xff) << 16;
 sectors |= (tf->lbam & 0xff) << 8;
 sectors |= (tf->lbal & 0xff);

 return sectors;
}
