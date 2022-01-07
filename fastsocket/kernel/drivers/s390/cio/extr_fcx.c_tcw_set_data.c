
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct tcw {int flags; void* output; scalar_t__ w; void* input; scalar_t__ r; } ;
typedef scalar_t__ addr_t ;


 int TCW_FLAGS_INPUT_TIDA ;
 int TCW_FLAGS_OUTPUT_TIDA ;

void tcw_set_data(struct tcw *tcw, void *data, int use_tidal)
{
 if (tcw->r) {
  tcw->input = (u64) ((addr_t) data);
  if (use_tidal)
   tcw->flags |= TCW_FLAGS_INPUT_TIDA;
 } else if (tcw->w) {
  tcw->output = (u64) ((addr_t) data);
  if (use_tidal)
   tcw->flags |= TCW_FLAGS_OUTPUT_TIDA;
 }
}
