
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stliport {int dummy; } ;
struct stlibrd {scalar_t__ state; unsigned int nrports; struct stliport** ports; } ;
struct seq_file {int dummy; } ;


 unsigned int STL_MAXPORTS ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;
 struct stlibrd** stli_brds ;
 int stli_drvtitle ;
 int stli_drvversion ;
 unsigned int stli_nrbrds ;
 int stli_portinfo (struct seq_file*,struct stlibrd*,struct stliport*,unsigned int) ;

__attribute__((used)) static int stli_proc_show(struct seq_file *m, void *v)
{
 struct stlibrd *brdp;
 struct stliport *portp;
 unsigned int brdnr, portnr, totalport;

 totalport = 0;

 seq_printf(m, "%s: version %s\n", stli_drvtitle, stli_drvversion);





 for (brdnr = 0; (brdnr < stli_nrbrds); brdnr++) {
  brdp = stli_brds[brdnr];
  if (brdp == ((void*)0))
   continue;
  if (brdp->state == 0)
   continue;

  totalport = brdnr * STL_MAXPORTS;
  for (portnr = 0; (portnr < brdp->nrports); portnr++,
      totalport++) {
   portp = brdp->ports[portnr];
   if (portp == ((void*)0))
    continue;
   stli_portinfo(m, brdp, portp, totalport);
  }
 }
 return 0;
}
