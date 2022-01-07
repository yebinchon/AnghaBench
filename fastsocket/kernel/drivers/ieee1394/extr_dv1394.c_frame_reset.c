
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int * frame_end_branch; int * frame_end_timestamp; int * mid_frame_timestamp; int * cip_syt2; int * cip_syt1; scalar_t__ assigned_timestamp; int * frame_begin_timestamp; scalar_t__ n_packets; scalar_t__ done; int state; } ;


 int FRAME_CLEAR ;

__attribute__((used)) static void frame_reset(struct frame *f)
{
 f->state = FRAME_CLEAR;
 f->done = 0;
 f->n_packets = 0;
 f->frame_begin_timestamp = ((void*)0);
 f->assigned_timestamp = 0;
 f->cip_syt1 = ((void*)0);
 f->cip_syt2 = ((void*)0);
 f->mid_frame_timestamp = ((void*)0);
 f->frame_end_timestamp = ((void*)0);
 f->frame_end_branch = ((void*)0);
}
