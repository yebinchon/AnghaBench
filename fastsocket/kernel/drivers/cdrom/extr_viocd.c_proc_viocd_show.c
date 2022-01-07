
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int model; int type; int rsrcname; } ;


 int seq_printf (struct seq_file*,char*,int,int ,int ,int ) ;
 TYPE_1__* viocd_diskinfo ;
 int viocd_numdev ;

__attribute__((used)) static int proc_viocd_show(struct seq_file *m, void *v)
{
 int i;

 for (i = 0; i < viocd_numdev; i++) {
  seq_printf(m, "viocd device %d is iSeries resource %10.10s"
    "type %4.4s, model %3.3s\n",
    i, viocd_diskinfo[i].rsrcname,
    viocd_diskinfo[i].type,
    viocd_diskinfo[i].model);
 }
 return 0;
}
