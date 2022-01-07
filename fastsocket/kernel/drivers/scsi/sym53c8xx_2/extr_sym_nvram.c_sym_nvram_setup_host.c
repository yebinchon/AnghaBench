
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int host_id; int factor; int width; int mode; } ;
struct TYPE_6__ {int host_id; } ;
struct TYPE_5__ {int flags; int host_id; int flags1; int flags2; } ;
struct TYPE_8__ {TYPE_3__ parisc; TYPE_2__ Tekram; TYPE_1__ Symbios; } ;
struct sym_nvram {int type; TYPE_4__ data; } ;
struct sym_hcb {int rv_scntl0; int myaddr; int verbose; int minsync; int maxwide; int scsi_mode; int usrflags; } ;
struct Scsi_Host {int reverse_ordering; } ;


 int SMODE_HVD ;
 int SMODE_LVD ;
 int SMODE_SE ;
 int SYMBIOS_AVOID_BUS_RESET ;
 int SYMBIOS_PARITY_ENABLE ;
 int SYMBIOS_SCAN_HI_LO ;
 int SYMBIOS_VERBOSE_MSGS ;
 int SYM_AVOID_BUS_RESET ;




void sym_nvram_setup_host(struct Scsi_Host *shost, struct sym_hcb *np, struct sym_nvram *nvram)
{




 switch (nvram->type) {
 case 129:
  if (!(nvram->data.Symbios.flags & SYMBIOS_PARITY_ENABLE))
   np->rv_scntl0 &= ~0x0a;
  np->myaddr = nvram->data.Symbios.host_id & 0x0f;
  if (nvram->data.Symbios.flags & SYMBIOS_VERBOSE_MSGS)
   np->verbose += 1;
  if (nvram->data.Symbios.flags1 & SYMBIOS_SCAN_HI_LO)
   shost->reverse_ordering = 1;
  if (nvram->data.Symbios.flags2 & SYMBIOS_AVOID_BUS_RESET)
   np->usrflags |= SYM_AVOID_BUS_RESET;
  break;
 case 128:
  np->myaddr = nvram->data.Tekram.host_id & 0x0f;
  break;
 default:
  break;
 }
}
