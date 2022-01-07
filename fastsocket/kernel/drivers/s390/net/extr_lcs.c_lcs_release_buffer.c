
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_channel {int ccwdev; } ;
struct lcs_buffer {scalar_t__ state; } ;


 int BUG_ON (int) ;
 scalar_t__ LCS_BUF_STATE_EMPTY ;
 scalar_t__ LCS_BUF_STATE_LOCKED ;
 scalar_t__ LCS_BUF_STATE_PROCESSED ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int trace ;

__attribute__((used)) static void
lcs_release_buffer(struct lcs_channel *channel, struct lcs_buffer *buffer)
{
 unsigned long flags;

 LCS_DBF_TEXT(5, trace, "relbuff");
 BUG_ON(buffer->state != LCS_BUF_STATE_LOCKED &&
        buffer->state != LCS_BUF_STATE_PROCESSED);
 spin_lock_irqsave(get_ccwdev_lock(channel->ccwdev), flags);
 buffer->state = LCS_BUF_STATE_EMPTY;
 spin_unlock_irqrestore(get_ccwdev_lock(channel->ccwdev), flags);
}
