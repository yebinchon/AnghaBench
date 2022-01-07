
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int LL (int ) ;
 int MEM_ERROR (int ) ;
 int R4 (int ) ;



 int pr_cont (char*) ;

__attribute__((used)) static bool k8_ic_mce(u16 ec, u8 xec)
{
 u8 ll = LL(ec);
 bool ret = 1;

 if (!MEM_ERROR(ec))
  return 0;

 if (ll == 0x2)
  pr_cont("during a linefill from L2.\n");
 else if (ll == 0x1) {
  switch (R4(ec)) {
  case 129:
   pr_cont("Parity error during data load.\n");
   break;

  case 130:
   pr_cont("Copyback Parity/Victim error.\n");
   break;

  case 128:
   pr_cont("Tag Snoop error.\n");
   break;

  default:
   ret = 0;
   break;
  }
 } else
  ret = 0;

 return ret;
}
