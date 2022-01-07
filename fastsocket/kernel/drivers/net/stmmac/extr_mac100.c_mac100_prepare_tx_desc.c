
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int first_segment; int buffer1_size; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct dma_desc {TYPE_2__ des01; } ;



__attribute__((used)) static void mac100_prepare_tx_desc(struct dma_desc *p, int is_fs, int len,
       int csum_flag)
{
 p->des01.tx.first_segment = is_fs;
 p->des01.tx.buffer1_size = len;
}
