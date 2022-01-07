
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct lpfc_nodelist {scalar_t__ nlp_rpi; } ;


 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;

__attribute__((used)) static int
lpfc_filter_by_rpi(struct lpfc_nodelist *ndlp, void *param)
{
 uint16_t *rpi = param;


 if (!NLP_CHK_NODE_ACT(ndlp))
  return 0;

 return ndlp->nlp_rpi == *rpi;
}
