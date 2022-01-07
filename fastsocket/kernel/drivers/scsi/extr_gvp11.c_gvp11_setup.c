
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gvp11_xfer_mask ;

void gvp11_setup (char *str, int *ints)
{
    gvp11_xfer_mask = ints[1];
}
