
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int txdelay; int persist; int slottime; int tailtime; int fulldup; int softdcd; int group; int idletime; int mintime; int maxkeyup; int waittime; int maxdefer; int tx_inhibit; } ;
struct TYPE_3__ {int speed; } ;
struct scc_channel {int* wreg; TYPE_2__ kiss; TYPE_1__ modem; } ;


 unsigned long CAST (int) ;
 int DTR ;
 unsigned long NO_SUCH_PARAM ;
 size_t R5 ;
 int RTS ;

__attribute__((used)) static unsigned long scc_get_param(struct scc_channel *scc, unsigned int cmd)
{
 switch (cmd)
 {
  case 130: return CAST(scc->kiss.txdelay);
  case 136: return CAST(scc->kiss.persist);
  case 134: return CAST(scc->kiss.slottime);
  case 129: return CAST(scc->kiss.tailtime);
  case 142: return CAST(scc->kiss.fulldup);
  case 133: return CAST(scc->kiss.softdcd);
  case 143: return CAST((scc->wreg[R5] & DTR)? 1:0);
  case 135: return CAST((scc->wreg[R5] & RTS)? 1:0);
  case 132: return CAST(scc->modem.speed);
  case 141: return CAST(scc->kiss.group);
  case 140: return CAST(scc->kiss.idletime);
  case 137: return CAST(scc->kiss.mintime);
  case 138: return CAST(scc->kiss.maxkeyup);
  case 128: return CAST(scc->kiss.waittime);
  case 139: return CAST(scc->kiss.maxdefer);
  case 131: return CAST(scc->kiss.tx_inhibit);
  default: return NO_SUCH_PARAM;
 }

}
