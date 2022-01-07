
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_init_invariants {int has_cardbus_slot; int sprom; int boardinfo; } ;
struct ssb_bus {int has_cardbus_slot; int sprom; int boardinfo; } ;
typedef int (* ssb_invariants_func_t ) (struct ssb_bus*,struct ssb_init_invariants*) ;
typedef int iv ;


 int memcpy (int *,int *,int) ;
 int memset (struct ssb_init_invariants*,int ,int) ;

__attribute__((used)) static int ssb_fetch_invariants(struct ssb_bus *bus,
    ssb_invariants_func_t get_invariants)
{
 struct ssb_init_invariants iv;
 int err;

 memset(&iv, 0, sizeof(iv));
 err = get_invariants(bus, &iv);
 if (err)
  goto out;
 memcpy(&bus->boardinfo, &iv.boardinfo, sizeof(iv.boardinfo));
 memcpy(&bus->sprom, &iv.sprom, sizeof(iv.sprom));
 bus->has_cardbus_slot = iv.has_cardbus_slot;
out:
 return err;
}
