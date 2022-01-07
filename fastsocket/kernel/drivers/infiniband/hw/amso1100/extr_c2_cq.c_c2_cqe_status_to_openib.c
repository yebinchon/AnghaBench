
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
 int IB_WC_GENERAL_ERR ;
 int IB_WC_LOC_ACCESS_ERR ;
 int IB_WC_LOC_LEN_ERR ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_MW_BIND_ERR ;
 int IB_WC_SUCCESS ;
 int IB_WC_WR_FLUSH_ERR ;

__attribute__((used)) static inline enum ib_wc_status c2_cqe_status_to_openib(u8 status)
{
 switch (status) {
 case 133:
  return IB_WC_SUCCESS;
 case 130:
  return IB_WC_WR_FLUSH_ERR;
 case 131:
  return IB_WC_LOC_PROT_ERR;
 case 132:
  return IB_WC_LOC_ACCESS_ERR;
 case 128:
  return IB_WC_LOC_LEN_ERR;
 case 129:
  return IB_WC_MW_BIND_ERR;
 default:
  return IB_WC_GENERAL_ERR;
 }
}
