
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct grip_mp {int gameport; } ;


 int dbg (char*,...) ;
 int dig_mode_start (int ,int *) ;
 scalar_t__ slots_valid (struct grip_mp*) ;

__attribute__((used)) static int multiport_init(struct grip_mp *grip)
{
 int dig_mode, initialized = 0, tries = 0;
 u32 packet;

 dig_mode = dig_mode_start(grip->gameport, &packet);
 while (!dig_mode && tries < 4) {
  dig_mode = dig_mode_start(grip->gameport, &packet);
  tries++;
 }

 if (dig_mode)
  dbg("multiport_init(): digital mode activated.\n");
 else {
  dbg("multiport_init(): unable to activate digital mode.\n");
  return 0;
 }


 for (tries = 0; tries < 4096; tries++) {
  if (slots_valid(grip)) {
   initialized = 1;
   break;
  }
 }
 dbg("multiport_init(): initialized == %d\n", initialized);
 return initialized;
}
