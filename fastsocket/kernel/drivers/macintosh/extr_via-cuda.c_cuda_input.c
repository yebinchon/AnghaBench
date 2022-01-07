
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adb_input (unsigned char*,int,unsigned char) ;
 int printk (char*,...) ;

__attribute__((used)) static void
cuda_input(unsigned char *buf, int nb)
{
    int i;

    switch (buf[0]) {
    case 128:
 break;

    default:
 printk("data from cuda (%d bytes):", nb);
 for (i = 0; i < nb; ++i)
     printk(" %.2x", buf[i]);
 printk("\n");
    }
}
