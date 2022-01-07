
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {int dummy; } ;
struct stlpanel {unsigned int nrports; struct stlport** ports; } ;
struct stlbrd {unsigned int nrpanels; struct stlpanel** panels; } ;


 int STL_MAXBRDS ;
 struct stlbrd** stl_brds ;

__attribute__((used)) static struct stlport *stl_getport(int brdnr, int panelnr, int portnr)
{
 struct stlbrd *brdp;
 struct stlpanel *panelp;

 if (brdnr < 0 || brdnr >= STL_MAXBRDS)
  return ((void*)0);
 brdp = stl_brds[brdnr];
 if (brdp == ((void*)0))
  return ((void*)0);
 if (panelnr < 0 || (unsigned int)panelnr >= brdp->nrpanels)
  return ((void*)0);
 panelp = brdp->panels[panelnr];
 if (panelp == ((void*)0))
  return ((void*)0);
 if (portnr < 0 || (unsigned int)portnr >= panelp->nrports)
  return ((void*)0);
 return panelp->ports[portnr];
}
