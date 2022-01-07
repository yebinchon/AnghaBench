
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RADEON_PRIM_TYPE_MASK ;







__attribute__((used)) static int bad_prim_vertex_nr(int primitive, int nr)
{
 switch (primitive & RADEON_PRIM_TYPE_MASK) {
 case 133:
 case 132:
  return nr < 1;
 case 135:
  return (nr & 1) || nr == 0;
 case 134:
  return nr < 2;
 case 129:
 case 136:
 case 137:
 case 131:
  return nr % 3 || nr == 0;
 case 130:
 case 128:
  return nr < 3;
 default:
  return 1;
 }
}
