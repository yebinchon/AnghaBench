
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adb_request {int reply_len; int* reply; } ;
struct TYPE_2__ {int handler_id; } ;


 int ADBREQ_REPLY ;
 int ADBREQ_SYNC ;
 int ADB_READREG (int,int) ;
 int ADB_WRITEREG (int,int) ;
 TYPE_1__* adb_handler ;
 int adb_request (struct adb_request*,int *,int,int,int ,...) ;

__attribute__((used)) static int try_handler_change(int address, int new_id)
{
 struct adb_request req;

 if (adb_handler[address].handler_id == new_id)
     return 1;
 adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
     ADB_WRITEREG(address, 3), address | 0x20, new_id);
 adb_request(&req, ((void*)0), ADBREQ_SYNC | ADBREQ_REPLY, 1,
     ADB_READREG(address, 3));
 if (req.reply_len < 2)
     return 0;
 if (req.reply[2] != new_id)
     return 0;
 adb_handler[address].handler_id = req.reply[2];

 return 1;
}
