
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dasd_debug_area ;
 int dasd_devmap_exit () ;
 int dasd_eer_exit () ;
 int dasd_gendisk_exit () ;
 int * dasd_page_cache ;
 int dasd_proc_exit () ;
 int dasd_statistics_removeroot () ;
 int debug_unregister (int *) ;
 int kmem_cache_destroy (int *) ;

__attribute__((used)) static void
dasd_exit(void)
{



 dasd_eer_exit();
        if (dasd_page_cache != ((void*)0)) {
  kmem_cache_destroy(dasd_page_cache);
  dasd_page_cache = ((void*)0);
 }
 dasd_gendisk_exit();
 dasd_devmap_exit();
 if (dasd_debug_area != ((void*)0)) {
  debug_unregister(dasd_debug_area);
  dasd_debug_area = ((void*)0);
 }
 dasd_statistics_removeroot();
}
