
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned long data; scalar_t__ expires; int function; } ;
struct sixpack {TYPE_3__ resync_t; TYPE_2__* tty; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* write ) (TYPE_2__*,unsigned char*,int) ;} ;


 scalar_t__ SIXP_RESYNC_TIMEOUT ;
 int TNC_UNSYNC_STARTUP ;
 int add_timer (TYPE_3__*) ;
 int del_timer (TYPE_3__*) ;
 scalar_t__ jiffies ;
 int resync_tnc ;
 int stub1 (TYPE_2__*,unsigned char*,int) ;
 int tnc_set_sync_state (struct sixpack*,int ) ;

__attribute__((used)) static inline int tnc_init(struct sixpack *sp)
{
 unsigned char inbyte = 0xe8;

 tnc_set_sync_state(sp, TNC_UNSYNC_STARTUP);

 sp->tty->ops->write(sp->tty, &inbyte, 1);

 del_timer(&sp->resync_t);
 sp->resync_t.data = (unsigned long) sp;
 sp->resync_t.function = resync_tnc;
 sp->resync_t.expires = jiffies + SIXP_RESYNC_TIMEOUT;
 add_timer(&sp->resync_t);

 return 0;
}
