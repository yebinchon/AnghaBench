
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran {int id; int * zoran_proc; } ;


 int remove_proc_entry (char*,int *) ;
 int snprintf (char*,int,char*,int) ;

void
zoran_proc_cleanup (struct zoran *zr)
{
}
