
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sbp2_target {unsigned int workarounds; int bus_id; } ;
struct TYPE_3__ {int firmware_revision; int model; unsigned int workarounds; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ SBP2_ROM_VALUE_WILDCARD ;
 unsigned int SBP2_WORKAROUND_OVERRIDE ;
 int fw_notify (char*,int ,...) ;
 unsigned int sbp2_param_workarounds ;
 TYPE_1__* sbp2_workarounds_table ;

__attribute__((used)) static void sbp2_init_workarounds(struct sbp2_target *tgt, u32 model,
      u32 firmware_revision)
{
 int i;
 unsigned int w = sbp2_param_workarounds;

 if (w)
  fw_notify("Please notify linux1394-devel@lists.sourceforge.net "
     "if you need the workarounds parameter for %s\n",
     tgt->bus_id);

 if (w & SBP2_WORKAROUND_OVERRIDE)
  goto out;

 for (i = 0; i < ARRAY_SIZE(sbp2_workarounds_table); i++) {

  if (sbp2_workarounds_table[i].firmware_revision !=
      (firmware_revision & 0xffffff00))
   continue;

  if (sbp2_workarounds_table[i].model != model &&
      sbp2_workarounds_table[i].model != SBP2_ROM_VALUE_WILDCARD)
   continue;

  w |= sbp2_workarounds_table[i].workarounds;
  break;
 }
 out:
 if (w)
  fw_notify("Workarounds for %s: 0x%x "
     "(firmware_revision 0x%06x, model_id 0x%06x)\n",
     tgt->bus_id, w, firmware_revision, model);
 tgt->workarounds = w;
}
