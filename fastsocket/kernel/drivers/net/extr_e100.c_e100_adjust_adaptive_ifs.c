
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nic {scalar_t__ adaptive_ifs; int tx_frames; int tx_collisions; } ;


 int DUPLEX_HALF ;
 int SPEED_100 ;
 int e100_configure ;
 int e100_exec_cb (struct nic*,int *,int ) ;

__attribute__((used)) static void e100_adjust_adaptive_ifs(struct nic *nic, int speed, int duplex)
{



 if (duplex == DUPLEX_HALF) {
  u32 prev = nic->adaptive_ifs;
  u32 min_frames = (speed == SPEED_100) ? 1000 : 100;

  if ((nic->tx_frames / 32 < nic->tx_collisions) &&
     (nic->tx_frames > min_frames)) {
   if (nic->adaptive_ifs < 60)
    nic->adaptive_ifs += 5;
  } else if (nic->tx_frames < min_frames) {
   if (nic->adaptive_ifs >= 5)
    nic->adaptive_ifs -= 5;
  }
  if (nic->adaptive_ifs != prev)
   e100_exec_cb(nic, ((void*)0), e100_configure);
 }
}
