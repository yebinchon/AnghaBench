
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scu_sgl_element {scalar_t__ address_lower; scalar_t__ address_upper; } ;
struct scu_sgl_element_pair {scalar_t__ next_pair_lower; scalar_t__ next_pair_upper; struct scu_sgl_element A; struct scu_sgl_element B; } ;
struct isci_stp_pio_sgl {scalar_t__ set; int index; } ;
struct isci_stp_request {struct isci_stp_pio_sgl sgl; } ;
struct isci_request {int dummy; } ;


 scalar_t__ SCU_SGL_ELEMENT_PAIR_A ;
 scalar_t__ SCU_SGL_ELEMENT_PAIR_B ;
 struct isci_request* to_ireq (struct isci_stp_request*) ;
 struct scu_sgl_element_pair* to_sgl_element_pair (struct isci_request*,int ) ;

__attribute__((used)) static struct scu_sgl_element *pio_sgl_next(struct isci_stp_request *stp_req)
{
 struct scu_sgl_element *sgl;
 struct scu_sgl_element_pair *sgl_pair;
 struct isci_request *ireq = to_ireq(stp_req);
 struct isci_stp_pio_sgl *pio_sgl = &stp_req->sgl;

 sgl_pair = to_sgl_element_pair(ireq, pio_sgl->index);
 if (!sgl_pair)
  sgl = ((void*)0);
 else if (pio_sgl->set == SCU_SGL_ELEMENT_PAIR_A) {
  if (sgl_pair->B.address_lower == 0 &&
      sgl_pair->B.address_upper == 0) {
   sgl = ((void*)0);
  } else {
   pio_sgl->set = SCU_SGL_ELEMENT_PAIR_B;
   sgl = &sgl_pair->B;
  }
 } else {
  if (sgl_pair->next_pair_lower == 0 &&
      sgl_pair->next_pair_upper == 0) {
   sgl = ((void*)0);
  } else {
   pio_sgl->index++;
   pio_sgl->set = SCU_SGL_ELEMENT_PAIR_A;
   sgl_pair = to_sgl_element_pair(ireq, pio_sgl->index);
   sgl = &sgl_pair->A;
  }
 }

 return sgl;
}
