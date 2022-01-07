
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gameport {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int GRIP_INIT_DELAY ;
 int IO_MODE_FAST ;
 int IO_RESET ;
 int IO_RETRY ;
 int gameport_trigger (struct gameport*) ;
 scalar_t__* init_seq ;
 int multiport_io (struct gameport*,int ,int,int *) ;
 int udelay (int ) ;

__attribute__((used)) static int dig_mode_start(struct gameport *gameport, u32 *packet)
{
 int i;
 int flags, tries = 0, bads = 0;

 for (i = 0; i < ARRAY_SIZE(init_seq); i++) {
  if (init_seq[i])
   gameport_trigger(gameport);
  udelay(GRIP_INIT_DELAY);
 }

 for (i = 0; i < 16; i++)
  udelay(GRIP_INIT_DELAY);

 while (tries < 64 && bads < 8) {

  flags = multiport_io(gameport, IO_RESET, 0x27, packet);

  if (flags & IO_MODE_FAST)
   return 1;

  if (flags & IO_RETRY)
   tries++;
  else
   bads++;
 }
 return 0;
}
