
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ETH_HLEN ;
 int NES_AEQE_Q2_DATA_ETHERNET ;

__attribute__((used)) static u8 *locate_mpa(u8 *pkt, u32 aeq_info)
{
 if (aeq_info & NES_AEQE_Q2_DATA_ETHERNET) {

  pkt += ETH_HLEN;


  pkt += 4 * (pkt[0] & 0x0f);
  pkt += 4 * ((pkt[12] >> 4) & 0x0f);
 }
 return pkt;
}
