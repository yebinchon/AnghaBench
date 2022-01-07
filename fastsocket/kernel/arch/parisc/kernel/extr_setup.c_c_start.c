
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;



__attribute__((used)) static void *
c_start (struct seq_file *m, loff_t *pos)
{





 return ((long)*pos < 1) ? (void *)1 : ((void*)0);
}
