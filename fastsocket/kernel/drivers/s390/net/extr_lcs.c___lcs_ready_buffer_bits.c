
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_channel {TYPE_1__* ccws; } ;
struct TYPE_2__ {int flags; } ;


 int CCW_FLAG_PCI ;
 int CCW_FLAG_SUSPEND ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_NUM_BUFFS ;
 int trace ;

__attribute__((used)) static inline void
__lcs_ready_buffer_bits(struct lcs_channel *channel, int index)
{
 int prev, next;

 LCS_DBF_TEXT(5, trace, "rdybits");
 prev = (index - 1) & (LCS_NUM_BUFFS - 1);
 next = (index + 1) & (LCS_NUM_BUFFS - 1);

 if (channel->ccws[next].flags & CCW_FLAG_SUSPEND) {

  if (!(channel->ccws[prev].flags & CCW_FLAG_SUSPEND))

   channel->ccws[index].flags |= CCW_FLAG_PCI;

  channel->ccws[index].flags &= ~CCW_FLAG_SUSPEND;
 }
}
