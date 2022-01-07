
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ oid; scalar_t__ length; } ;
typedef TYPE_1__ pimfor_header_t ;


 scalar_t__ OID_INL_TUNNEL ;
 int PIMFOR_FLAG_LITTLE_ENDIAN ;
 int be32_to_cpus (scalar_t__*) ;
 int le32_to_cpus (scalar_t__*) ;

__attribute__((used)) static pimfor_header_t *
pimfor_decode_header(void *data, int len)
{
 pimfor_header_t *h = data;

 while ((void *) h < data + len) {
  if (h->flags & PIMFOR_FLAG_LITTLE_ENDIAN) {
   le32_to_cpus(&h->oid);
   le32_to_cpus(&h->length);
  } else {
   be32_to_cpus(&h->oid);
   be32_to_cpus(&h->length);
  }
  if (h->oid != OID_INL_TUNNEL)
   return h;
  h++;
 }
 return ((void*)0);
}
