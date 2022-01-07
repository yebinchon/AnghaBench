
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dummy; } ;


 int COMMAND ;
 int COMMAND_BUSY ;
 int EVACK ;
 int EV_CLEARCOMMANDBUSY ;
 int IN4500 (struct airo_info*,int ) ;
 int OUT4500 (struct airo_info*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int waitbusy (struct airo_info *ai) {
 int delay = 0;
 while ((IN4500(ai, COMMAND) & COMMAND_BUSY) && (delay < 10000)) {
  udelay (10);
  if ((++delay % 20) == 0)
   OUT4500(ai, EVACK, EV_CLEARCOMMANDBUSY);
 }
 return delay < 10000;
}
