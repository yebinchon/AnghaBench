
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs3270 {int init; } ;


 int ENOMEM ;
 struct fs3270* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int kfree (struct fs3270*) ;
 struct fs3270* kzalloc (int,int ) ;
 int raw3270_request_alloc (int ) ;

__attribute__((used)) static struct fs3270 *
fs3270_alloc_view(void)
{
 struct fs3270 *fp;

 fp = kzalloc(sizeof(struct fs3270),GFP_KERNEL);
 if (!fp)
  return ERR_PTR(-ENOMEM);
 fp->init = raw3270_request_alloc(0);
 if (IS_ERR(fp->init)) {
  kfree(fp);
  return ERR_PTR(-ENOMEM);
 }
 return fp;
}
