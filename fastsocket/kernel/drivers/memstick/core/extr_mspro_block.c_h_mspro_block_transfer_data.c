
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int member_0; } ;
struct mspro_block_data {unsigned char transfer_cmd; int caps; int current_page; size_t current_seg; int page_size; size_t seg_count; int data_dir; TYPE_1__* req_sg; } ;
struct memstick_request {int tpc; int need_card_int; unsigned char int_reg; unsigned char* data; scalar_t__ error; } ;
struct memstick_dev {int next_request; } ;
struct TYPE_2__ {int length; size_t offset; } ;


 int BUG () ;
 int MEMSTICK_CAP_AUTO_GET_INT ;
 unsigned char MEMSTICK_INT_BREQ ;
 unsigned char MEMSTICK_INT_CED ;
 unsigned char MEMSTICK_INT_CMDNAK ;
 unsigned char MEMSTICK_INT_ERR ;
 unsigned char MSPRO_CMD_STOP ;





 size_t PAGE_SHIFT ;
 int READ ;
 int h_mspro_block_default ;
 int h_mspro_block_wait_for_ced ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 int memstick_init_req (struct memstick_request*,int const,unsigned char*,int) ;
 int memstick_init_req_sg (struct memstick_request*,int,struct scatterlist*) ;
 int mspro_block_complete_req (struct memstick_dev*,scalar_t__) ;
 int nth_page (int ,size_t) ;
 int offset_in_page (size_t) ;
 int sg_page (TYPE_1__*) ;
 int sg_set_page (struct scatterlist*,int ,size_t,int ) ;

__attribute__((used)) static int h_mspro_block_transfer_data(struct memstick_dev *card,
           struct memstick_request **mrq)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);
 unsigned char t_val = 0;
 struct scatterlist t_sg = { 0 };
 size_t t_offset;

 if ((*mrq)->error)
  return mspro_block_complete_req(card, (*mrq)->error);

 switch ((*mrq)->tpc) {
 case 128:
  memstick_init_req(*mrq, 130, &msb->transfer_cmd, 1);
  (*mrq)->need_card_int = 1;
  return 0;
 case 130:
  t_val = (*mrq)->int_reg;
  memstick_init_req(*mrq, 132, ((void*)0), 1);
  if (msb->caps & MEMSTICK_CAP_AUTO_GET_INT)
   goto has_int_reg;
  return 0;
 case 132:
  t_val = (*mrq)->data[0];
has_int_reg:
  if (t_val & (MEMSTICK_INT_CMDNAK | MEMSTICK_INT_ERR)) {
   t_val = MSPRO_CMD_STOP;
   memstick_init_req(*mrq, 130, &t_val, 1);
   card->next_request = h_mspro_block_default;
   return 0;
  }

  if (msb->current_page
      == (msb->req_sg[msb->current_seg].length
   / msb->page_size)) {
   msb->current_page = 0;
   msb->current_seg++;

   if (msb->current_seg == msb->seg_count) {
    if (t_val & MEMSTICK_INT_CED) {
     return mspro_block_complete_req(card,
         0);
    } else {
     card->next_request
      = h_mspro_block_wait_for_ced;
     memstick_init_req(*mrq, 132,
         ((void*)0), 1);
     return 0;
    }
   }
  }

  if (!(t_val & MEMSTICK_INT_BREQ)) {
   memstick_init_req(*mrq, 132, ((void*)0), 1);
   return 0;
  }

  t_offset = msb->req_sg[msb->current_seg].offset;
  t_offset += msb->current_page * msb->page_size;

  sg_set_page(&t_sg,
       nth_page(sg_page(&(msb->req_sg[msb->current_seg])),
         t_offset >> PAGE_SHIFT),
       msb->page_size, offset_in_page(t_offset));

  memstick_init_req_sg(*mrq, msb->data_dir == READ
        ? 131
        : 129,
         &t_sg);
  (*mrq)->need_card_int = 1;
  return 0;
 case 131:
 case 129:
  msb->current_page++;
  if (msb->caps & MEMSTICK_CAP_AUTO_GET_INT) {
   t_val = (*mrq)->int_reg;
   goto has_int_reg;
  } else {
   memstick_init_req(*mrq, 132, ((void*)0), 1);
   return 0;
  }

 default:
  BUG();
 }
}
