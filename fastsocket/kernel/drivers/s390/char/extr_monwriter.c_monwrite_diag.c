
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct monwrite_hdr {int datalen; int mod_level; int release; int version; int record_num; int applid; } ;
struct appldata_product_id {int mod_lvl; int release_nr; int version_nr; int record_nr; int prod_fn; int prod_nr; } ;


 int EINVAL ;
 int EPERM ;
 int appldata_asm (struct appldata_product_id*,int,void*,int ) ;
 int pr_err (char*,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int monwrite_diag(struct monwrite_hdr *myhdr, char *buffer, int fcn)
{
 struct appldata_product_id id;
 int rc;

 strcpy(id.prod_nr, "LNXAPPL");
 id.prod_fn = myhdr->applid;
 id.record_nr = myhdr->record_num;
 id.version_nr = myhdr->version;
 id.release_nr = myhdr->release;
 id.mod_lvl = myhdr->mod_level;
 rc = appldata_asm(&id, fcn, (void *) buffer, myhdr->datalen);
 if (rc <= 0)
  return rc;
 pr_err("Writing monitor data failed with rc=%i\n", rc);
 if (rc == 5)
  return -EPERM;
 return -EINVAL;
}
