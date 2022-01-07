
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;

__attribute__((used)) static inline int match_scancode(int code, int scancode)
{
 if (scancode == 0)
  return 1;
 return ((code & (HID_USAGE_PAGE | HID_USAGE)) == scancode);
}
