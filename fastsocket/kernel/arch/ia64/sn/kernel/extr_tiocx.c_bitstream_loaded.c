
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int nasid_t ;


 int DBG (char*,int) ;
 int REMOTE_HUB_L (int ,int ) ;
 int TIO_ICE_PMI_TX_DYN_CREDIT_STAT_CB3 ;
 int TIO_ICE_PMI_TX_DYN_CREDIT_STAT_CB3_CREDIT_CNT_MASK ;

__attribute__((used)) static int bitstream_loaded(nasid_t nasid)
{
 u64 cx_credits;

 cx_credits = REMOTE_HUB_L(nasid, TIO_ICE_PMI_TX_DYN_CREDIT_STAT_CB3);
 cx_credits &= TIO_ICE_PMI_TX_DYN_CREDIT_STAT_CB3_CREDIT_CNT_MASK;
 DBG("cx_credits= 0x%lx\n", cx_credits);

 return (cx_credits == 0xf) ? 1 : 0;
}
