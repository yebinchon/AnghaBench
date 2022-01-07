
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc4_prov {scalar_t__ recv; } ;
typedef enum fc_fh_type { ____Placeholder_fc_fh_type } fc_fh_type ;


 int EBUSY ;
 int EINVAL ;
 int FC_FC4_PROV_SIZE ;
 struct fc4_prov** fc_active_prov ;
 struct fc4_prov** fc_passive_prov ;
 int fc_prov_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int fc_fc4_register_provider(enum fc_fh_type type, struct fc4_prov *prov)
{
 struct fc4_prov **prov_entry;
 int ret = 0;

 if (type >= FC_FC4_PROV_SIZE)
  return -EINVAL;
 mutex_lock(&fc_prov_mutex);
 prov_entry = (prov->recv ? fc_passive_prov : fc_active_prov) + type;
 if (*prov_entry)
  ret = -EBUSY;
 else
  *prov_entry = prov;
 mutex_unlock(&fc_prov_mutex);
 return ret;
}
