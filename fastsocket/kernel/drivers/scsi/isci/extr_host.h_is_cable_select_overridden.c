
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CABLE_OVERRIDE_DISABLED ;
 scalar_t__ cable_selection_override ;

__attribute__((used)) static inline int is_cable_select_overridden(void)
{
 return cable_selection_override < CABLE_OVERRIDE_DISABLED;
}
