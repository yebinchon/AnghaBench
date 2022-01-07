
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_notification {int vi; int di; } ;
struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;




 int gluebi_create (int *,int *) ;
 int gluebi_remove (int *) ;
 int gluebi_resized (int *) ;
 int gluebi_updated (int *) ;

__attribute__((used)) static int gluebi_notify(struct notifier_block *nb, unsigned long l,
    void *ns_ptr)
{
 struct ubi_notification *nt = ns_ptr;

 switch (l) {
 case 131:
  gluebi_create(&nt->di, &nt->vi);
  break;
 case 130:
  gluebi_remove(&nt->vi);
  break;
 case 129:
  gluebi_resized(&nt->vi);
  break;
 case 128:
  gluebi_updated(&nt->vi);
  break;
 default:
  break;
 }
 return NOTIFY_OK;
}
