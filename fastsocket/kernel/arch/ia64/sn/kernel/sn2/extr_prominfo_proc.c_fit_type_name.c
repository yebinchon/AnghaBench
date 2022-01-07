
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fit_type_map_t {int type; char const* name; } ;


 unsigned char FIT_ENTRY_PAL_A ;
 unsigned char FIT_ENTRY_PAL_B ;
 unsigned char FIT_ENTRY_UNUSED ;
 struct fit_type_map_t* fit_entry_types ;

__attribute__((used)) static const char *fit_type_name(unsigned char type)
{
 struct fit_type_map_t const *mapp;

 for (mapp = fit_entry_types; mapp->type != 0xff; mapp++)
  if (type == mapp->type)
   return mapp->name;

 if ((type > FIT_ENTRY_PAL_A) && (type < FIT_ENTRY_UNUSED))
  return "OEM type";
 if ((type > FIT_ENTRY_PAL_B) && (type < FIT_ENTRY_PAL_A))
  return "Reserved";

 return "Unknown type";
}
