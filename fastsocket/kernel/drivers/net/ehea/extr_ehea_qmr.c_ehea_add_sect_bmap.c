
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EHEA_BUSMAP_ADD_SECT ;
 int ehea_busmap_mutex ;
 int ehea_update_busmap (unsigned long,unsigned long,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ehea_add_sect_bmap(unsigned long pfn, unsigned long nr_pages)
{
 int ret;

 mutex_lock(&ehea_busmap_mutex);
 ret = ehea_update_busmap(pfn, nr_pages, EHEA_BUSMAP_ADD_SECT);
 mutex_unlock(&ehea_busmap_mutex);
 return ret;
}
