
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ off; scalar_t__ column; int row; } ;
struct TYPE_5__ {int* byte; } ;
struct nandsim {TYPE_2__ regs; TYPE_1__ buf; } ;
struct TYPE_7__ {int failed; int corrected; } ;
struct TYPE_8__ {TYPE_3__ ecc_stats; } ;


 int NS_WARN (char*,int,int ,scalar_t__,int ,int ) ;
 int bitflips ;
 TYPE_4__* nsmtd ;
 int random32 () ;

void do_bit_flips(struct nandsim *ns, int num)
{
 if (bitflips && random32() < (1 << 22)) {
  int flips = 1;
  if (bitflips > 1)
   flips = (random32() % (int) bitflips) + 1;
  while (flips--) {
   int pos = random32() % (num * 8);
   ns->buf.byte[pos / 8] ^= (1 << (pos % 8));
   NS_WARN("read_page: flipping bit %d in page %d "
    "reading from %d ecc: corrected=%u failed=%u\n",
    pos, ns->regs.row, ns->regs.column + ns->regs.off,
    nsmtd->ecc_stats.corrected, nsmtd->ecc_stats.failed);
  }
 }
}
