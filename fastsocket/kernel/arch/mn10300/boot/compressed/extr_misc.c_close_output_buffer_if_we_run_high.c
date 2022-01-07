
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moveparams {scalar_t__ hcount; scalar_t__ lcount; } ;


 scalar_t__ LOW_BUFFER_SIZE ;
 scalar_t__ bytes_out ;

void close_output_buffer_if_we_run_high(struct moveparams *mv)
{
 mv->lcount = bytes_out;
 if (bytes_out > LOW_BUFFER_SIZE) {
  mv->lcount = LOW_BUFFER_SIZE;
  if (mv->hcount)
   mv->hcount = bytes_out - LOW_BUFFER_SIZE;
 } else {
  mv->hcount = 0;
 }
}
