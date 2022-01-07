
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ipath_message_header {int * bth; } ;
struct ipath_devdata {scalar_t__ ipath_ibcctrl; scalar_t__ ipath_lli_counter; int ipath_lli_errors; } ;
typedef int __le32 ;


 scalar_t__ INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK ;
 scalar_t__ INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT ;
 int INFINIPATH_RHF_H_ICRCERR ;
 int INFINIPATH_RHF_H_VCRCERR ;
 int PKT ;
 int be32_to_cpu (int ) ;
 int get_rhf_errstring (int,char*,int) ;
 int ipath_cdbg (int ,char*,int,int,int ,int ,int,int,char*) ;
 int ipath_hdrget_length_in_bytes (int *) ;
 int ipath_hdrget_rcv_type (int *) ;

__attribute__((used)) static void ipath_rcv_hdrerr(struct ipath_devdata *dd,
        u32 eflags,
        u32 l,
        u32 etail,
        __le32 *rhf_addr,
        struct ipath_message_header *hdr)
{
 char emsg[128];

 get_rhf_errstring(eflags, emsg, sizeof emsg);
 ipath_cdbg(PKT, "RHFerrs %x hdrqtail=%x typ=%u "
     "tlen=%x opcode=%x egridx=%x: %s\n",
     eflags, l,
     ipath_hdrget_rcv_type(rhf_addr),
     ipath_hdrget_length_in_bytes(rhf_addr),
     be32_to_cpu(hdr->bth[0]) >> 24,
     etail, emsg);


 if (eflags & (INFINIPATH_RHF_H_ICRCERR | INFINIPATH_RHF_H_VCRCERR)) {
  u8 n = (dd->ipath_ibcctrl >>
   INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT) &
   INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK;

  if (++dd->ipath_lli_counter > n) {
   dd->ipath_lli_counter = 0;
   dd->ipath_lli_errors++;
  }
 }
}
