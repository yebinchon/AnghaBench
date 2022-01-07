
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct capi_ctr {char* (* procinfo ) (struct capi_ctr*) ;int name; int cardstate; int driver_name; int cnr; } ;


 int cardstate2str (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,char*) ;
 char* stub1 (struct capi_ctr*) ;

__attribute__((used)) static int controller_show(struct seq_file *seq, void *v)
{
 struct capi_ctr *ctr = *(struct capi_ctr **) v;

 if (!ctr)
  return 0;

 seq_printf(seq, "%d %-10s %-8s %-16s %s\n",
     ctr->cnr, ctr->driver_name,
     cardstate2str(ctr->cardstate),
     ctr->name,
     ctr->procinfo ? ctr->procinfo(ctr) : "");

 return 0;
}
