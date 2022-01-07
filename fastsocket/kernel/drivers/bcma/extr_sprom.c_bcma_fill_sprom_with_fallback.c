
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_sprom {int dummy; } ;
struct TYPE_2__ {int revision; } ;
struct bcma_bus {TYPE_1__ sprom; } ;


 int ENOENT ;
 int bcma_debug (struct bcma_bus*,char*,int ) ;
 int bcma_warn (struct bcma_bus*,char*,int) ;
 int get_fallback_sprom (struct bcma_bus*,struct ssb_sprom*) ;

__attribute__((used)) static int bcma_fill_sprom_with_fallback(struct bcma_bus *bus,
      struct ssb_sprom *out)
{
 int err;

 if (!get_fallback_sprom) {
  err = -ENOENT;
  goto fail;
 }

 err = get_fallback_sprom(bus, out);
 if (err)
  goto fail;

 bcma_debug(bus, "Using SPROM revision %d provided by platform.\n",
     bus->sprom.revision);
 return 0;
fail:
 bcma_warn(bus, "Using fallback SPROM failed (err %d)\n", err);
 return err;
}
