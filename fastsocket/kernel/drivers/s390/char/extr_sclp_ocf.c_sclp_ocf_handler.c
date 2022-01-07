
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gds_vector {int length; } ;
struct gds_subvector {int length; } ;
struct evbuf_header {int length; } ;


 int EBCASC (scalar_t__*,size_t) ;
 int OCF_LENGTH_CPC_NAME ;
 int OCF_LENGTH_HMC_NETWORK ;
 scalar_t__* cpc_name ;
 scalar_t__* hmc_network ;
 int memcpy (scalar_t__*,struct gds_vector*,size_t) ;
 size_t min (int ,size_t) ;
 int schedule_work (int *) ;
 struct gds_vector* sclp_find_gds_subvector (struct gds_vector*,void*,int) ;
 struct gds_vector* sclp_find_gds_vector (struct gds_vector*,void*,int) ;
 int sclp_ocf_change_work ;
 int sclp_ocf_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sclp_ocf_handler(struct evbuf_header *evbuf)
{
 struct gds_vector *v;
 struct gds_subvector *sv, *netid, *cpc;
 size_t size;


 v = sclp_find_gds_vector(evbuf + 1, (void *) evbuf + evbuf->length,
     0x9f00);
 if (!v)
  return;

 v = sclp_find_gds_vector(v + 1, (void *) v + v->length, 0x9f22);
 if (!v)
  return;

 sv = sclp_find_gds_subvector(v + 1, (void *) v + v->length, 0x81);
 if (!sv)
  return;

 netid = sclp_find_gds_subvector(sv + 1, (void *) sv + sv->length, 1);

 cpc = sclp_find_gds_subvector(sv + 1, (void *) sv + sv->length, 2);

 spin_lock(&sclp_ocf_lock);
 if (netid) {
  size = min(OCF_LENGTH_HMC_NETWORK, (size_t) netid->length);
  memcpy(hmc_network, netid + 1, size);
  EBCASC(hmc_network, size);
  hmc_network[size] = 0;
 }
 if (cpc) {
  size = min(OCF_LENGTH_CPC_NAME, (size_t) cpc->length);
  memcpy(cpc_name, cpc + 1, size);
  EBCASC(cpc_name, size);
  cpc_name[size] = 0;
 }
 spin_unlock(&sclp_ocf_lock);
 schedule_work(&sclp_ocf_change_work);
}
