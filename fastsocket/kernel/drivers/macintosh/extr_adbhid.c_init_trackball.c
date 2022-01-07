
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int dummy; } ;


 int ADBREQ_SYNC ;
 int ADB_WRITEREG (int,int) ;
 int adb_request (struct adb_request*,int *,int ,int,int ,int,int) ;
 int printk (char*) ;

__attribute__((used)) static void
init_trackball(int id)
{
 struct adb_request req;

 printk(" (trackman/mouseman)");

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
 ADB_WRITEREG(id,1), 00,0x81);

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
 ADB_WRITEREG(id,1), 01,0x81);

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
 ADB_WRITEREG(id,1), 02,0x81);

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
 ADB_WRITEREG(id,1), 03,0x38);

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
 ADB_WRITEREG(id,1), 00,0x81);

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
 ADB_WRITEREG(id,1), 01,0x81);

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
 ADB_WRITEREG(id,1), 02,0x81);

 adb_request(&req, ((void*)0), ADBREQ_SYNC, 3,
 ADB_WRITEREG(id,1), 03,0x38);
}
