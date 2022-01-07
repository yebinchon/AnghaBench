
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_file {int kind; int refcnt; } ;
struct ppp {struct file* owner; } ;
struct inode {int dummy; } ;
struct file {struct ppp_file* private_data; } ;




 int PF_TO_CHANNEL (struct ppp_file*) ;
 struct ppp* PF_TO_PPP (struct ppp_file*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int ppp_destroy_channel (int ) ;
 int ppp_destroy_interface (struct ppp*) ;
 int ppp_shutdown_interface (struct ppp*) ;

__attribute__((used)) static int ppp_release(struct inode *unused, struct file *file)
{
 struct ppp_file *pf = file->private_data;
 struct ppp *ppp;

 if (pf) {
  file->private_data = ((void*)0);
  if (pf->kind == 128) {
   ppp = PF_TO_PPP(pf);
   if (file == ppp->owner)
    ppp_shutdown_interface(ppp);
  }
  if (atomic_dec_and_test(&pf->refcnt)) {
   switch (pf->kind) {
   case 128:
    ppp_destroy_interface(PF_TO_PPP(pf));
    break;
   case 129:
    ppp_destroy_channel(PF_TO_CHANNEL(pf));
    break;
   }
  }
 }
 return 0;
}
