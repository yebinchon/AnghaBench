
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,unsigned short,char*) ;

__attribute__((used)) static void qpace_progress(char *s, unsigned short hex)
{
 printk("*** %04x : %s\n", hex, s ? s : "");
}
