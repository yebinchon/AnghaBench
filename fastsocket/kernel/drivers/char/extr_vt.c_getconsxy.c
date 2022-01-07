
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned char vc_x; unsigned char vc_y; } ;



void getconsxy(struct vc_data *vc, unsigned char *p)
{
 p[0] = vc->vc_x;
 p[1] = vc->vc_y;
}
