
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ibmvfc_async_desc {scalar_t__ ae; } ;


 int ARRAY_SIZE (struct ibmvfc_async_desc const*) ;
 struct ibmvfc_async_desc const* ae_desc ;
 struct ibmvfc_async_desc const unknown_ae ;

__attribute__((used)) static const struct ibmvfc_async_desc *ibmvfc_get_ae_desc(u64 ae)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ae_desc); i++)
  if (ae_desc[i].ae == ae)
   return &ae_desc[i];

 return &unknown_ae;
}
