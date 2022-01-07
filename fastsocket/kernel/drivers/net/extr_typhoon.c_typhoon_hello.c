
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct basic_ring {scalar_t__ lastWrite; scalar_t__ ringBase; } ;
struct typhoon {int command_lock; scalar_t__ ioaddr; struct basic_ring cmdRing; } ;
struct cmd_desc {int dummy; } ;


 int INIT_COMMAND_NO_RESPONSE (struct cmd_desc*,int ) ;
 int TYPHOON_CMD_HELLO_RESP ;
 scalar_t__ TYPHOON_REG_CMD_READY ;
 int iowrite32 (scalar_t__,scalar_t__) ;
 int smp_wmb () ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int typhoon_inc_cmd_index (scalar_t__*,int) ;

__attribute__((used)) static inline void
typhoon_hello(struct typhoon *tp)
{
 struct basic_ring *ring = &tp->cmdRing;
 struct cmd_desc *cmd;





 if(spin_trylock(&tp->command_lock)) {
  cmd = (struct cmd_desc *)(ring->ringBase + ring->lastWrite);
  typhoon_inc_cmd_index(&ring->lastWrite, 1);

  INIT_COMMAND_NO_RESPONSE(cmd, TYPHOON_CMD_HELLO_RESP);
  smp_wmb();
  iowrite32(ring->lastWrite, tp->ioaddr + TYPHOON_REG_CMD_READY);
  spin_unlock(&tp->command_lock);
 }
}
