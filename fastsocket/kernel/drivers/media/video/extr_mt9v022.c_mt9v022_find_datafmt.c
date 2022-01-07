
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9v022_datafmt {int code; } ;
typedef enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;



__attribute__((used)) static const struct mt9v022_datafmt *mt9v022_find_datafmt(
 enum v4l2_mbus_pixelcode code, const struct mt9v022_datafmt *fmt,
 int n)
{
 int i;
 for (i = 0; i < n; i++)
  if (fmt[i].code == code)
   return fmt + i;

 return ((void*)0);
}
