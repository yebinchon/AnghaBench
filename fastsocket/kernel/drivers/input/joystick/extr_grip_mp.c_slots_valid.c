
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grip_mp {TYPE_1__** port; } ;
struct TYPE_2__ {scalar_t__ mode; } ;


 scalar_t__ GRIP_MODE_NONE ;
 scalar_t__ GRIP_MODE_RESET ;
 int IO_DONE ;
 int IO_GOT_PACKET ;
 int get_and_decode_packet (struct grip_mp*,int ) ;

__attribute__((used)) static int slots_valid(struct grip_mp *grip)
{
 int flags, slot, invalid = 0, active = 0;

 flags = get_and_decode_packet(grip, 0);
 if (!(flags & IO_GOT_PACKET))
  return 0;

 for (slot = 0; slot < 4; slot++) {
  if (grip->port[slot]->mode == GRIP_MODE_RESET)
   invalid = 1;
  if (grip->port[slot]->mode != GRIP_MODE_NONE)
   active = 1;
 }


 if (!active)
  return (flags & IO_DONE) ? 1 : 0;


 return invalid ? 0 : 1;
}
