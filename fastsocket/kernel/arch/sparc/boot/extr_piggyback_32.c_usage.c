
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{

 fprintf(stderr, "Usage: piggyback vmlinux.aout System.map fs_img.gz\n");
 fprintf(stderr, "\tKernel image will be modified in place.\n");
 exit(1);
}
