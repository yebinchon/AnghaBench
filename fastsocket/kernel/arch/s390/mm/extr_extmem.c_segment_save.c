
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcss_segment {int start_addr; int end; int segcnt; TYPE_1__* range; } ;
struct TYPE_2__ {int start; int end; } ;


 int MACHINE_IS_VM ;
 int PAGE_SHIFT ;
 int cpcmd (char*,int *,int ,int*) ;
 int dcss_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 struct dcss_segment* segment_by_name (char*) ;
 int * segtype_string ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;

void
segment_save(char *name)
{
 struct dcss_segment *seg;
 int startpfn = 0;
 int endpfn = 0;
 char cmd1[160];
 char cmd2[80];
 int i, response;

 if (!MACHINE_IS_VM)
  return;

 mutex_lock(&dcss_lock);
 seg = segment_by_name (name);

 if (seg == ((void*)0)) {
  pr_err("Saving unknown DCSS %s failed\n", name);
  goto out;
 }

 startpfn = seg->start_addr >> PAGE_SHIFT;
 endpfn = (seg->end) >> PAGE_SHIFT;
 sprintf(cmd1, "DEFSEG %s", name);
 for (i=0; i<seg->segcnt; i++) {
  sprintf(cmd1+strlen(cmd1), " %lX-%lX %s",
   seg->range[i].start >> PAGE_SHIFT,
   seg->range[i].end >> PAGE_SHIFT,
   segtype_string[seg->range[i].start & 0xff]);
 }
 sprintf(cmd2, "SAVESEG %s", name);
 response = 0;
 cpcmd(cmd1, ((void*)0), 0, &response);
 if (response) {
  pr_err("Saving a DCSS failed with DEFSEG response code "
         "%i\n", response);
  goto out;
 }
 cpcmd(cmd2, ((void*)0), 0, &response);
 if (response) {
  pr_err("Saving a DCSS failed with SAVESEG response code "
         "%i\n", response);
  goto out;
 }
out:
 mutex_unlock(&dcss_lock);
}
