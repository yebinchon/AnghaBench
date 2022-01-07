
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int reply_len; int * reply; } ;


 int ADBREQ_REPLY ;
 int ADBREQ_SYNC ;
 int ADB_FLUSH (int) ;
 int ADB_READREG (int,int) ;
 int ADB_WRITEREG (int,int) ;
 int adb_request (struct adb_request*,int *,int,int,int ,...) ;
 int memcpy (unsigned char*,int *,int) ;
 int printk (char*) ;

__attribute__((used)) static void
init_trackpad(int id)
{
 struct adb_request req;
 unsigned char r1_buffer[8];

 printk(" (trackpad)");

 adb_request(&req, ((void*)0), ADBREQ_SYNC | ADBREQ_REPLY, 1,
      ADB_READREG(id,1));
 if (req.reply_len < 8)
     printk("bad length for reg. 1\n");
 else
 {
     memcpy(r1_buffer, &req.reply[1], 8);

     adb_request(&req, ((void*)0), ADBREQ_SYNC, 9,
         ADB_WRITEREG(id,1),
             r1_buffer[0],
             r1_buffer[1],
             r1_buffer[2],
             r1_buffer[3],
             r1_buffer[4],
             r1_buffer[5],
             0x0d,
             r1_buffer[7]);

            adb_request(&req, ((void*)0), ADBREQ_SYNC, 9,
         ADB_WRITEREG(id,2),
          0x99,
          0x94,
          0x19,
          0xff,
          0xb2,
          0x8a,
          0x1b,
          0x50);

     adb_request(&req, ((void*)0), ADBREQ_SYNC, 9,
         ADB_WRITEREG(id,1),
             r1_buffer[0],
             r1_buffer[1],
             r1_buffer[2],
             r1_buffer[3],
             r1_buffer[4],
             r1_buffer[5],
             0x03,
             r1_buffer[7]);


     adb_request(&req, ((void*)0), ADBREQ_SYNC, 1, ADB_FLUSH(id));
        }
}
