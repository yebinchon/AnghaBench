
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int* flash; scalar_t__ pciaux; int flags; } ;


 int AUXDATA ;
 int AUXOFF ;
 int AUXPAGE ;
 int FLAG_MPI ;
 int FLASHSIZE ;
 int OUT4500 (struct airo_info*,int ,int) ;
 int SWS0 ;
 int memcpy_toio (scalar_t__,int*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int flashputbuf(struct airo_info *ai){
 int nwords;


 if (test_bit(FLAG_MPI,&ai->flags))
  memcpy_toio(ai->pciaux + 0x8000, ai->flash, FLASHSIZE);
 else {
  OUT4500(ai,AUXPAGE,0x100);
  OUT4500(ai,AUXOFF,0);

  for(nwords=0;nwords != FLASHSIZE / 2;nwords++){
   OUT4500(ai,AUXDATA,ai->flash[nwords] & 0xffff);
  }
 }
 OUT4500(ai,SWS0,0x8000);

 return 0;
}
