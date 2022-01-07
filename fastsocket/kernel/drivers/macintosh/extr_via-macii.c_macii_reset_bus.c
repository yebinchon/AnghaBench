
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int dummy; } ;


 int ADB_BUSRESET ;
 int adb_request (struct adb_request*,int *,int ,int,int ) ;
 scalar_t__ request_is_queued (struct adb_request*) ;
 int udelay (int) ;

__attribute__((used)) static int macii_reset_bus(void)
{
 static struct adb_request req;

 if (request_is_queued(&req))
  return 0;


 adb_request(&req, ((void*)0), 0, 1, ADB_BUSRESET);


 udelay(3000);

 return 0;
}
