
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ao_update_output_selection { ____Placeholder_ao_update_output_selection } ao_update_output_selection ;



__attribute__((used)) static unsigned AO_UPDATE_Output_Select(enum ao_update_output_selection
     selection)
{
 return selection & 0x3;
}
