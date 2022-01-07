
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_iso_ctx {int nb_cmd; int left_size; TYPE_1__** ir_prg; } ;
struct TYPE_2__ {void* status; } ;


 int PAGE_SIZE ;
 void* cpu_to_le32 (int) ;

__attribute__((used)) static void reset_ir_status(struct dma_iso_ctx *d, int n)
{
 int i;
 d->ir_prg[n][0].status = cpu_to_le32(4);
 d->ir_prg[n][1].status = cpu_to_le32(PAGE_SIZE-4);
 for (i = 2; i < d->nb_cmd - 1; i++)
  d->ir_prg[n][i].status = cpu_to_le32(PAGE_SIZE);
 d->ir_prg[n][i].status = cpu_to_le32(d->left_size);
}
