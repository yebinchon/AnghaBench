
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdram_params {int name; } ;


 int ARRAY_SIZE (struct sdram_params*) ;
 struct sdram_params* sdram_tbl ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static struct sdram_params *sa1110_find_sdram(const char *name)
{
 struct sdram_params *sdram;

 for (sdram = sdram_tbl; sdram < sdram_tbl + ARRAY_SIZE(sdram_tbl); sdram++)
  if (strcmp(name, sdram->name) == 0)
   return sdram;

 return ((void*)0);
}
