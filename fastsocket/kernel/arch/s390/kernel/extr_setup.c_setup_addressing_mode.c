
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PRIMARY_SPACE_MODE ;
 int PSW32_ASC_PRIMARY ;
 int PSW32_ASC_SECONDARY ;
 int PSW_ASC_PRIMARY ;
 int PSW_ASC_SECONDARY ;
 scalar_t__ SECONDARY_SPACE_MODE ;
 int pr_info (char*) ;
 scalar_t__ set_amode_and_uaccess (int ,int ) ;
 scalar_t__ user_mode ;

__attribute__((used)) static void setup_addressing_mode(void)
{
 if (user_mode == SECONDARY_SPACE_MODE) {
  if (set_amode_and_uaccess(PSW_ASC_SECONDARY,
       PSW32_ASC_SECONDARY))
   pr_info("Execute protection active, "
    "mvcos available\n");
  else
   pr_info("Execute protection active, "
    "mvcos not available\n");
 } else if (user_mode == PRIMARY_SPACE_MODE) {
  if (set_amode_and_uaccess(PSW_ASC_PRIMARY, PSW32_ASC_PRIMARY))
   pr_info("Address spaces switched, "
    "mvcos available\n");
  else
   pr_info("Address spaces switched, "
    "mvcos not available\n");
 }
}
