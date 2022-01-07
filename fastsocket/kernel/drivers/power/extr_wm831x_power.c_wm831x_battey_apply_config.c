
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dev; } ;
struct chg_map {int val; int reg_val; } ;


 int dev_dbg (int ,char*,char const*,int,char const*) ;
 int dev_err (int ,char*,char const*,int,char const*) ;

__attribute__((used)) static void wm831x_battey_apply_config(struct wm831x *wm831x,
           struct chg_map *map, int count, int val,
           int *reg, const char *name,
           const char *units)
{
 int i;

 for (i = 0; i < count; i++)
  if (val == map[i].val)
   break;
 if (i == count) {
  dev_err(wm831x->dev, "Invalid %s %d%s\n",
   name, val, units);
 } else {
  *reg |= map[i].reg_val;
  dev_dbg(wm831x->dev, "Set %s of %d%s\n", name, val, units);
 }
}
