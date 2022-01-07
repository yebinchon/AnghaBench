
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nubus_advance (unsigned char**,int,int) ;
 int nubus_rewind (unsigned char**,int,int) ;

__attribute__((used)) static void nubus_move(unsigned char **ptr, int len, int map)
{
 if(len > 0)
  nubus_advance(ptr, len, map);
 else if(len < 0)
  nubus_rewind(ptr, -len, map);
}
