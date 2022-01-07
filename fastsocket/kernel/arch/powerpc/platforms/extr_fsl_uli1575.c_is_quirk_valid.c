
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ machine_is (int ) ;
 int mpc8544_ds ;
 int mpc8572_ds ;
 int mpc86xx_hpcn ;
 int p2020_ds ;

__attribute__((used)) static inline bool is_quirk_valid(void)
{
 return (machine_is(mpc86xx_hpcn) ||
  machine_is(mpc8544_ds) ||
  machine_is(p2020_ds) ||
  machine_is(mpc8572_ds));
}
