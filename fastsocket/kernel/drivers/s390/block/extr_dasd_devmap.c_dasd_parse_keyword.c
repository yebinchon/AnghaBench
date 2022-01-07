
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBF_EVENT (int ,char*,char*) ;
 int DBF_INFO ;
 int DBF_WARNING ;
 int EINVAL ;
 char* ERR_PTR (int ) ;
 scalar_t__ MACHINE_IS_VM ;
 int PAGE_SIZE ;
 int SLAB_CACHE_DMA ;
 int dasd_autodetect ;
 int dasd_nofcx ;
 int dasd_nopav ;
 scalar_t__ dasd_page_cache ;
 int dasd_probeonly ;
 scalar_t__ kmem_cache_create (char*,int ,int ,int ,int *) ;
 int pr_info (char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static char *
dasd_parse_keyword( char *parsestring ) {

 char *nextcomma, *residual_str;
 int length;

 nextcomma = strchr(parsestring,',');
 if (nextcomma) {
  length = nextcomma - parsestring;
  residual_str = nextcomma + 1;
 } else {
  length = strlen(parsestring);
  residual_str = parsestring + length;
        }
 if (strncmp("autodetect", parsestring, length) == 0) {
  dasd_autodetect = 1;
  pr_info("The autodetection mode has been activated\n");
                return residual_str;
        }
 if (strncmp("probeonly", parsestring, length) == 0) {
  dasd_probeonly = 1;
  pr_info("The probeonly mode has been activated\n");
                return residual_str;
        }
 if (strncmp("nopav", parsestring, length) == 0) {
  if (MACHINE_IS_VM)
   pr_info("'nopav' is not supported on z/VM\n");
  else {
   dasd_nopav = 1;
   pr_info("PAV support has be deactivated\n");
  }
  return residual_str;
 }
 if (strncmp("nofcx", parsestring, length) == 0) {
  dasd_nofcx = 1;
  pr_info("High Performance FICON support has been "
   "deactivated\n");
  return residual_str;
 }
 if (strncmp("fixedbuffers", parsestring, length) == 0) {
  if (dasd_page_cache)
   return residual_str;
  dasd_page_cache =
   kmem_cache_create("dasd_page_cache", PAGE_SIZE,
       PAGE_SIZE, SLAB_CACHE_DMA,
       ((void*)0));
  if (!dasd_page_cache)
   DBF_EVENT(DBF_WARNING, "%s", "Failed to create slab, "
    "fixed buffer mode disabled.");
  else
   DBF_EVENT(DBF_INFO, "%s",
     "turning on fixed buffer mode");
                return residual_str;
        }
 return ERR_PTR(-EINVAL);
}
