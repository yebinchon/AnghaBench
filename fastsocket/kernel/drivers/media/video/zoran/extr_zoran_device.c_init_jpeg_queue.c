
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_buffers; TYPE_1__* buffer; } ;
struct zoran {int * stat_com; TYPE_2__ jpg_buffers; scalar_t__ jpg_queued_num; scalar_t__ jpg_err_shift; scalar_t__ jpg_err_seq; scalar_t__ num_errors; scalar_t__ JPEG_error; scalar_t__ jpg_seq_num; scalar_t__ jpg_que_tail; scalar_t__ jpg_dma_tail; scalar_t__ jpg_dma_head; scalar_t__ jpg_que_head; } ;
struct TYPE_3__ {int state; } ;


 int BUZ_NUM_STAT_COM ;
 int BUZ_STATE_USER ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void
init_jpeg_queue (struct zoran *zr)
{
 int i;


 zr->jpg_que_head = 0;
 zr->jpg_dma_head = 0;
 zr->jpg_dma_tail = 0;
 zr->jpg_que_tail = 0;
 zr->jpg_seq_num = 0;
 zr->JPEG_error = 0;
 zr->num_errors = 0;
 zr->jpg_err_seq = 0;
 zr->jpg_err_shift = 0;
 zr->jpg_queued_num = 0;
 for (i = 0; i < zr->jpg_buffers.num_buffers; i++) {
  zr->jpg_buffers.buffer[i].state = BUZ_STATE_USER;
 }
 for (i = 0; i < BUZ_NUM_STAT_COM; i++) {
  zr->stat_com[i] = cpu_to_le32(1);
 }
}
