
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_channel {TYPE_1__* ccws; struct lcs_buffer* iob; } ;
struct lcs_buffer {scalar_t__ state; } ;
struct TYPE_2__ {int flags; } ;


 int BUG_ON (int) ;
 int CCW_FLAG_PCI ;
 int CCW_FLAG_SUSPEND ;
 scalar_t__ LCS_BUF_STATE_PROCESSED ;
 scalar_t__ LCS_BUF_STATE_READY ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_NUM_BUFFS ;
 int __lcs_ready_buffer_bits (struct lcs_channel*,int) ;
 int __lcs_resume_channel (struct lcs_channel*) ;
 int trace ;

__attribute__((used)) static int
__lcs_processed_buffer(struct lcs_channel *channel, struct lcs_buffer *buffer)
{
 int index, prev, next;

 LCS_DBF_TEXT(5, trace, "prcsbuff");
 BUG_ON(buffer->state != LCS_BUF_STATE_READY);
 buffer->state = LCS_BUF_STATE_PROCESSED;
 index = buffer - channel->iob;
 prev = (index - 1) & (LCS_NUM_BUFFS - 1);
 next = (index + 1) & (LCS_NUM_BUFFS - 1);

 channel->ccws[index].flags |= CCW_FLAG_SUSPEND;
 channel->ccws[index].flags &= ~CCW_FLAG_PCI;

 if (channel->iob[prev].state == LCS_BUF_STATE_READY) {






  __lcs_ready_buffer_bits(channel, prev);
 }

 channel->ccws[next].flags &= ~CCW_FLAG_PCI;
 return __lcs_resume_channel(channel);
}
