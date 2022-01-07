
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ai_convert_output_selection { ____Placeholder_ai_convert_output_selection } ai_convert_output_selection ;



__attribute__((used)) static unsigned AI_CONVERT_Output_Select(enum ai_convert_output_selection
      selection)
{
 return selection & 0x3;
}
