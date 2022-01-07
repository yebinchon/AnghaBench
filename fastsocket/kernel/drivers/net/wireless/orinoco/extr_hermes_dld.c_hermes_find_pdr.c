
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pdr {scalar_t__ next; } ;


 scalar_t__ PDI_END ;
 scalar_t__ pdr_id (struct pdr const*) ;
 int pdr_len (struct pdr const*) ;

__attribute__((used)) static const struct pdr *
hermes_find_pdr(const struct pdr *first_pdr, u32 record_id, const void *end)
{
 const struct pdr *pdr = first_pdr;

 end -= sizeof(struct pdr);

 while (((void *) pdr <= end) &&
        (pdr_id(pdr) != PDI_END)) {





  if (pdr_len(pdr) < 2)
   return ((void*)0);


  if (pdr_id(pdr) == record_id)
   return pdr;

  pdr = (struct pdr *) pdr->next;
 }
 return ((void*)0);
}
