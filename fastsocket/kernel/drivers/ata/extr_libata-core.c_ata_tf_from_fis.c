
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_taskfile {int hob_nsect; int nsect; int hob_lbah; int hob_lbam; int hob_lbal; int device; int lbah; int lbam; int lbal; int feature; int command; } ;



void ata_tf_from_fis(const u8 *fis, struct ata_taskfile *tf)
{
 tf->command = fis[2];
 tf->feature = fis[3];

 tf->lbal = fis[4];
 tf->lbam = fis[5];
 tf->lbah = fis[6];
 tf->device = fis[7];

 tf->hob_lbal = fis[8];
 tf->hob_lbam = fis[9];
 tf->hob_lbah = fis[10];

 tf->nsect = fis[12];
 tf->hob_nsect = fis[13];
}
