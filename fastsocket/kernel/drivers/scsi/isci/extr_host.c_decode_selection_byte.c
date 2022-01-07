
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cable_selections { ____Placeholder_cable_selections } cable_selections ;



__attribute__((used)) static enum cable_selections decode_selection_byte(
 int phy,
 unsigned char selection_byte)
{
 return ((selection_byte & (1 << phy)) ? 1 : 0)
  + (selection_byte & (1 << (phy + 4)) ? 2 : 0);
}
