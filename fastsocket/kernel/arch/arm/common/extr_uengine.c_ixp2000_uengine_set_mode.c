
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CC_ENABLE ;
 int CTX_ENABLES ;
 int NN_GET ;
 int NN_PUT ;
 int T_INDEX_BYTE_INDEX ;
 int ixp2000_uengine_csr_write (int,int ,int) ;

void ixp2000_uengine_set_mode(int uengine, u32 mode)
{




 mode |= 0x10000000;
 ixp2000_uengine_csr_write(uengine, CTX_ENABLES, mode);




 ixp2000_uengine_csr_write(uengine, CC_ENABLE, 0x00002000);




 ixp2000_uengine_csr_write(uengine, NN_PUT, 0x00);
 ixp2000_uengine_csr_write(uengine, NN_GET, 0x00);
 ixp2000_uengine_csr_write(uengine, T_INDEX_BYTE_INDEX, 0);
}
