
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void set_int(char *p, int l)
{
 p[0] = (char)(l >> 24) ;
 p[1] = (char)(l >> 16) ;
 p[2] = (char)(l >> 8) ;
 p[3] = (char)(l >> 0) ;
}
