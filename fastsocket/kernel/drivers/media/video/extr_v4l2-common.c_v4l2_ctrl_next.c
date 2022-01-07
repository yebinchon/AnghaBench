
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ V4L2_CTRL_FLAG_NEXT_CTRL ;
 scalar_t__ V4L2_CTRL_ID2CLASS (scalar_t__ const) ;
 scalar_t__ V4L2_CTRL_ID_MASK ;

u32 v4l2_ctrl_next(const u32 * const * ctrl_classes, u32 id)
{
 u32 ctrl_class = V4L2_CTRL_ID2CLASS(id);
 const u32 *pctrl;

 if (ctrl_classes == ((void*)0))
  return 0;


 if ((id & V4L2_CTRL_FLAG_NEXT_CTRL) == 0) {

  while (*ctrl_classes && V4L2_CTRL_ID2CLASS(**ctrl_classes) != ctrl_class)
   ctrl_classes++;
  if (*ctrl_classes == ((void*)0))
   return 0;
  pctrl = *ctrl_classes;

  while (*pctrl && *pctrl != id) pctrl++;
  return *pctrl ? id : 0;
 }
 id &= V4L2_CTRL_ID_MASK;
 id++;


 while (*ctrl_classes && V4L2_CTRL_ID2CLASS(**ctrl_classes) < ctrl_class)
  ctrl_classes++;

 if (*ctrl_classes == ((void*)0))
  return 0;
 pctrl = *ctrl_classes;

 while (*pctrl && *pctrl < id) pctrl++;
 if (*pctrl)
  return *pctrl;


 ctrl_classes++;
 if (*ctrl_classes == ((void*)0))
  return 0;
 return **ctrl_classes;
}
