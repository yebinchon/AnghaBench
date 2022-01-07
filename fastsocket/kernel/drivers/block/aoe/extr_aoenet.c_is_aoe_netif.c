
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char* name; } ;


 int WHITESPACE ;
 char* aoe_iflist ;
 int strcspn (char*,int ) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int strspn (char*,int ) ;

int
is_aoe_netif(struct net_device *ifp)
{
 register char *p, *q;
 register int len;

 if (aoe_iflist[0] == '\0')
  return 1;

 p = aoe_iflist + strspn(aoe_iflist, WHITESPACE);
 for (; *p; p = q + strspn(q, WHITESPACE)) {
  q = p + strcspn(p, WHITESPACE);
  if (q != p)
   len = q - p;
  else
   len = strlen(p);

  if (strlen(ifp->name) == len && !strncmp(ifp->name, p, len))
   return 1;
  if (q == p)
   break;
 }

 return 0;
}
