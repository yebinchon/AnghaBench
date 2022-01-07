
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mci {int cp; } ;
struct crw {scalar_t__ rsc; scalar_t__ slct; } ;
struct TYPE_2__ {int mcck_interruption_code; } ;


 scalar_t__ CRW_RSC_CPATH ;
 TYPE_1__ S390_lowcore ;
 int atomic_dec (int *) ;
 int chpid_reset_count ;
 scalar_t__ stcrw (struct crw*) ;

__attribute__((used)) static void s390_reset_chpids_mcck_handler(void)
{
 struct crw crw;
 struct mci *mci;


 mci = (struct mci *)&S390_lowcore.mcck_interruption_code;
 if (!mci->cp)
  return;

 while (stcrw(&crw) == 0) {

  if (crw.slct && crw.rsc == CRW_RSC_CPATH)
   atomic_dec(&chpid_reset_count);
 }
}
