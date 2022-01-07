
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int dummy; } ;


 int ENODEV ;
 int ENOENT ;
 struct omap_mbox* ERR_PTR (int ) ;
 struct omap_mbox** find_mboxes (char const*) ;
 int mboxes_lock ;
 int omap_mbox_init (struct omap_mbox*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct omap_mbox *omap_mbox_get(const char *name)
{
 struct omap_mbox *mbox;
 int ret;

 read_lock(&mboxes_lock);
 mbox = *(find_mboxes(name));
 if (mbox == ((void*)0)) {
  read_unlock(&mboxes_lock);
  return ERR_PTR(-ENOENT);
 }

 read_unlock(&mboxes_lock);

 ret = omap_mbox_init(mbox);
 if (ret)
  return ERR_PTR(-ENODEV);

 return mbox;
}
