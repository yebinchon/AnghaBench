
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct osst_tape {int update_frame_cntr; int first_mark_ppos; int wrt_pass_cntr; int first_data_ppos; int capacity; int filemark_cnt; int last_mark_ppos; int last_mark_lbn; scalar_t__ raw; TYPE_1__* buffer; } ;
struct TYPE_9__ {void* last_frame_ppos; void* first_frame_ppos; void* wrt_pass_cntr; void* par_desc_ver; int partition_num; } ;
typedef TYPE_3__ os_partition_t ;
struct TYPE_10__ {int dat_sz; int entry_cnt; TYPE_2__* dat_list; int reserved3; int reserved1; } ;
typedef TYPE_4__ os_dat_t ;
struct TYPE_11__ {int frame_type; void* last_mark_lbn; void* last_mark_ppos; void* phys_fm; void* filemark_cnt; void* logical_blk_num; void* logical_blk_num_high; void* frame_seq_num; void* update_frame_cntr; void* next_mark_ppos; void* hdwr; int application_sig; void* format_id; TYPE_4__ dat; TYPE_3__ partition; } ;
typedef TYPE_5__ os_aux_t ;
struct TYPE_8__ {int reserved; int flags; void* blk_cnt; void* blk_sz; } ;
struct TYPE_7__ {TYPE_5__* aux; } ;


 int OS_CONFIG_PARTITION ;
 int OS_DATA_PARTITION ;
 int OS_DAT_FLAGS_DATA ;
 int OS_DAT_FLAGS_MARK ;




 void* OS_PARTITION_VERSION ;
 void* htonl (int) ;
 void* htons (int) ;
 int memcpy (int ,char*,int) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static void osst_init_aux(struct osst_tape * STp, int frame_type, int frame_seq_number,
      int logical_blk_num, int blk_sz, int blk_cnt)
{
 os_aux_t *aux = STp->buffer->aux;
 os_partition_t *par = &aux->partition;
 os_dat_t *dat = &aux->dat;

 if (STp->raw) return;

 memset(aux, 0, sizeof(*aux));
 aux->format_id = htonl(0);
 memcpy(aux->application_sig, "LIN4", 4);
 aux->hdwr = htonl(0);
 aux->frame_type = frame_type;

 switch (frame_type) {
   case 129:
  aux->update_frame_cntr = htonl(STp->update_frame_cntr);
  par->partition_num = OS_CONFIG_PARTITION;
  par->par_desc_ver = OS_PARTITION_VERSION;
  par->wrt_pass_cntr = htons(0xffff);

  par->first_frame_ppos = htonl(0);
  par->last_frame_ppos = htonl(0xbb7);
  aux->frame_seq_num = htonl(0);
  aux->logical_blk_num_high = htonl(0);
  aux->logical_blk_num = htonl(0);
  aux->next_mark_ppos = htonl(STp->first_mark_ppos);
  break;
   case 131:
   case 128:
  dat->dat_sz = 8;
  dat->reserved1 = 0;
  dat->entry_cnt = 1;
  dat->reserved3 = 0;
  dat->dat_list[0].blk_sz = htonl(blk_sz);
  dat->dat_list[0].blk_cnt = htons(blk_cnt);
  dat->dat_list[0].flags = frame_type==128?
       OS_DAT_FLAGS_MARK:OS_DAT_FLAGS_DATA;
  dat->dat_list[0].reserved = 0;
   case 130:
  aux->update_frame_cntr = htonl(0);
  par->partition_num = OS_DATA_PARTITION;
  par->par_desc_ver = OS_PARTITION_VERSION;
  par->wrt_pass_cntr = htons(STp->wrt_pass_cntr);
  par->first_frame_ppos = htonl(STp->first_data_ppos);
  par->last_frame_ppos = htonl(STp->capacity);
  aux->frame_seq_num = htonl(frame_seq_number);
  aux->logical_blk_num_high = htonl(0);
  aux->logical_blk_num = htonl(logical_blk_num);
  break;
   default: ;
 }
 aux->filemark_cnt = htonl(STp->filemark_cnt);
 aux->phys_fm = htonl(0xffffffff);
 aux->last_mark_ppos = htonl(STp->last_mark_ppos);
 aux->last_mark_lbn = htonl(STp->last_mark_lbn);
}
