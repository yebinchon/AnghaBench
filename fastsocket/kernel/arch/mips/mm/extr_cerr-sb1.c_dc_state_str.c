
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_state {int val; char* name; } ;


 struct dc_state* dc_states ;

__attribute__((used)) static char *dc_state_str(unsigned char state)
{
 struct dc_state *dsc = dc_states;
 while (dsc->val != 0xff) {
  if (dsc->val == state)
   break;
  dsc++;
 }
 return dsc->name;
}
