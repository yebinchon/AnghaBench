
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLDI2CCND ;
 int PLDI2CDATA ;
 int PLDI2CSTEN ;
 int PLDI2CSTEN_STEN ;
 int PLDI2CSTS ;
 int PLDI2CSTS_BB ;
 int ar_inl (int ) ;
 int ar_outl (int,int ) ;
 int cpu_relax () ;
 int wait_acknowledge () ;
 int wait_for_vsync () ;

void iic(int n, unsigned long addr, unsigned long data1, unsigned long data2,
  unsigned long data3)
{
 int i;


 ar_outl(addr, PLDI2CDATA);
 wait_for_vsync();


 ar_outl(1, PLDI2CCND);
 wait_acknowledge();


 ar_outl(data1, PLDI2CDATA);
 wait_for_vsync();
 ar_outl(PLDI2CSTEN_STEN, PLDI2CSTEN);
 wait_acknowledge();


 ar_outl(data2, PLDI2CDATA);
 wait_for_vsync();
 ar_outl(PLDI2CSTEN_STEN, PLDI2CSTEN);
 wait_acknowledge();

 if (n == 3) {

  ar_outl(data3, PLDI2CDATA);
  wait_for_vsync();
  ar_outl(PLDI2CSTEN_STEN, PLDI2CSTEN);
  wait_acknowledge();
 }


 for (i = 0; i < 100; i++)
  cpu_relax();
 ar_outl(2, PLDI2CCND);
 ar_outl(2, PLDI2CCND);

 while (ar_inl(PLDI2CSTS) & PLDI2CSTS_BB)
  cpu_relax();
}
