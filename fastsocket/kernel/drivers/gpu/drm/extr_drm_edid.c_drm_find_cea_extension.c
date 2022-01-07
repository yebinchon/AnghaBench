
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct edid {int extensions; } ;


 scalar_t__ CEA_EXT ;
 int EDID_LENGTH ;

u8 *drm_find_cea_extension(struct edid *edid)
{
 u8 *edid_ext = ((void*)0);
 int i;


 if (edid == ((void*)0) || edid->extensions == 0)
  return ((void*)0);


 for (i = 0; i < edid->extensions; i++) {
  edid_ext = (u8 *)edid + EDID_LENGTH * (i + 1);
  if (edid_ext[0] == CEA_EXT)
   break;
 }

 if (i == edid->extensions)
  return ((void*)0);

 return edid_ext;
}
