
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CO_APIC_IDE0 ;
 char VISWS_320 ;

__attribute__((used)) static inline int co_apic_ide0_hack(void)
{
 extern char visws_board_type;
 extern char visws_board_rev;

 if (visws_board_type == VISWS_320 && visws_board_rev == 5)
  return 5;
 return CO_APIC_IDE0;
}
