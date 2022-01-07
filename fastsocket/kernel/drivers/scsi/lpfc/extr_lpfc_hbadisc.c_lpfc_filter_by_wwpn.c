
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_nodelist {int nlp_portname; } ;


 scalar_t__ memcmp (int *,void*,int) ;

__attribute__((used)) static int
lpfc_filter_by_wwpn(struct lpfc_nodelist *ndlp, void *param)
{
 return memcmp(&ndlp->nlp_portname, param,
        sizeof(ndlp->nlp_portname)) == 0;
}
