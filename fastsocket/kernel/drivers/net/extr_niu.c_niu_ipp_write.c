
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int IPP_CFIG ;
 int IPP_CFIG_DFIFO_PIO_W ;
 int IPP_DFIFO_WR0 ;
 int IPP_DFIFO_WR1 ;
 int IPP_DFIFO_WR2 ;
 int IPP_DFIFO_WR3 ;
 int IPP_DFIFO_WR4 ;
 int IPP_DFIFO_WR_PTR ;
 int nr64_ipp (int ) ;
 int nw64_ipp (int ,int) ;

__attribute__((used)) static void niu_ipp_write(struct niu *np, int index, u64 *data)
{
 u64 val = nr64_ipp(IPP_CFIG);

 nw64_ipp(IPP_CFIG, val | IPP_CFIG_DFIFO_PIO_W);
 nw64_ipp(IPP_DFIFO_WR_PTR, index);
 nw64_ipp(IPP_DFIFO_WR0, data[0]);
 nw64_ipp(IPP_DFIFO_WR1, data[1]);
 nw64_ipp(IPP_DFIFO_WR2, data[2]);
 nw64_ipp(IPP_DFIFO_WR3, data[3]);
 nw64_ipp(IPP_DFIFO_WR4, data[4]);
 nw64_ipp(IPP_CFIG, val & ~IPP_CFIG_DFIFO_PIO_W);
}
