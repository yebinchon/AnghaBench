
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; TYPE_1__* tty; } ;
struct slgt_info {TYPE_2__ port; int icount; scalar_t__ pending_bh; int device_name; scalar_t__ tx_buf; int max_frame_size; } ;
struct TYPE_3__ {int flags; } ;


 int ASYNC_INITIALIZED ;
 int DBGERR (char*) ;
 int DBGINFO (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TTY_IO_ERROR ;
 int change_params (struct slgt_info*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ kmalloc (int ,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int startup(struct slgt_info *info)
{
 DBGINFO(("%s startup\n", info->device_name));

 if (info->port.flags & ASYNC_INITIALIZED)
  return 0;

 if (!info->tx_buf) {
  info->tx_buf = kmalloc(info->max_frame_size, GFP_KERNEL);
  if (!info->tx_buf) {
   DBGERR(("%s can't allocate tx buffer\n", info->device_name));
   return -ENOMEM;
  }
 }

 info->pending_bh = 0;

 memset(&info->icount, 0, sizeof(info->icount));


 change_params(info);

 if (info->port.tty)
  clear_bit(TTY_IO_ERROR, &info->port.tty->flags);

 info->port.flags |= ASYNC_INITIALIZED;

 return 0;
}
