
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int len; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
struct ar9170 {int readlen; void* cmd_buf; int cmd_lock; int cmd_wait; int * readbuf; TYPE_3__ cmd; TYPE_1__* udev; } ;
struct TYPE_4__ {int dev; } ;


 int CARL9170_RR_INVALID_RSP ;
 int DUMP_PREFIX_OFFSET ;
 int carl9170_restart (struct ar9170*,int ) ;
 int complete (int *) ;
 int dev_warn (int *,char*,int,int) ;
 int memcpy (int *,void*,int) ;
 int print_hex_dump_bytes (char*,int ,void*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void carl9170_cmd_callback(struct ar9170 *ar, u32 len, void *buffer)
{





 if (unlikely(ar->readlen != (len - 4))) {
  dev_warn(&ar->udev->dev, "received invalid command response:"
    "got %d, instead of %d\n", len - 4, ar->readlen);
  print_hex_dump_bytes("carl9170 cmd:", DUMP_PREFIX_OFFSET,
   ar->cmd_buf, (ar->cmd.hdr.len + 4) & 0x3f);
  print_hex_dump_bytes("carl9170 rsp:", DUMP_PREFIX_OFFSET,
   buffer, len);




  carl9170_restart(ar, CARL9170_RR_INVALID_RSP);
 }

 spin_lock(&ar->cmd_lock);
 if (ar->readbuf) {
  if (len >= 4)
   memcpy(ar->readbuf, buffer + 4, len - 4);

  ar->readbuf = ((void*)0);
 }
 complete(&ar->cmd_wait);
 spin_unlock(&ar->cmd_lock);
}
