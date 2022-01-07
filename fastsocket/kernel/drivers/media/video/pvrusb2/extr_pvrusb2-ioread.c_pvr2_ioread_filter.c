
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ioread {int sync_state; unsigned int c_data_len; unsigned int c_data_offs; size_t sync_buf_offs; size_t sync_key_len; scalar_t__* c_data_ptr; scalar_t__* sync_key_ptr; unsigned int sync_trashed_count; int mutex; int enabled; } ;


 int PVR2_TRACE_DATA_FLOW ;
 int PVR2_TRACE_ERROR_LEGS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_ioread_get_buffer (struct pvr2_ioread*) ;
 int pvr2_trace (int ,char*,unsigned int,...) ;

__attribute__((used)) static void pvr2_ioread_filter(struct pvr2_ioread *cp)
{
 unsigned int idx;
 if (!cp->enabled) return;
 if (cp->sync_state != 1) return;




 mutex_lock(&cp->mutex); while (1) {

  if (!pvr2_ioread_get_buffer(cp)) break;
  if (!cp->c_data_len) break;



  for (idx = cp->c_data_offs; idx < cp->c_data_len; idx++) {
   if (cp->sync_buf_offs >= cp->sync_key_len) break;
   if (cp->c_data_ptr[idx] ==
       cp->sync_key_ptr[cp->sync_buf_offs]) {

    (cp->sync_buf_offs)++;
   } else {

    cp->sync_buf_offs = 0;
   }
  }


  cp->c_data_offs += idx;
  cp->sync_trashed_count += idx;


  if (cp->sync_buf_offs >= cp->sync_key_len) {
   cp->sync_trashed_count -= cp->sync_key_len;
   pvr2_trace(PVR2_TRACE_DATA_FLOW,
       "/*---TRACE_READ---*/"
       " sync_state <== 2 (skipped %u bytes)",
       cp->sync_trashed_count);
   cp->sync_state = 2;
   cp->sync_buf_offs = 0;
   break;
  }

  if (cp->c_data_offs < cp->c_data_len) {

   pvr2_trace(PVR2_TRACE_ERROR_LEGS,
       "ERROR: pvr2_ioread filter sync problem"
       " len=%u offs=%u",
       cp->c_data_len,cp->c_data_offs);


   break;
  }

  continue;
 } mutex_unlock(&cp->mutex);
}
