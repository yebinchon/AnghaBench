
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int M_SMB_BUSY ;
 int M_SMB_ERROR ;
 int R_SMB_CMD ;
 int R_SMB_DATA ;
 int R_SMB_START ;
 int R_SMB_STATUS ;
 int SMB_CSR (int ) ;
 int V_SMB_ADDR (int ) ;
 int V_SMB_TT_WR3BYTE ;
 int X1241_CCR_ADDRESS ;
 int __raw_readq (int ) ;
 int __raw_writeq (int,int ) ;

__attribute__((used)) static int xicor_write(uint8_t addr, int b)
{
        while (__raw_readq(SMB_CSR(R_SMB_STATUS)) & M_SMB_BUSY)
                ;

 __raw_writeq(addr, SMB_CSR(R_SMB_CMD));
 __raw_writeq((addr & 0xff) | ((b & 0xff) << 8), SMB_CSR(R_SMB_DATA));
 __raw_writeq(V_SMB_ADDR(X1241_CCR_ADDRESS) | V_SMB_TT_WR3BYTE,
       SMB_CSR(R_SMB_START));

        while (__raw_readq(SMB_CSR(R_SMB_STATUS)) & M_SMB_BUSY)
                ;

        if (__raw_readq(SMB_CSR(R_SMB_STATUS)) & M_SMB_ERROR) {

                __raw_writeq(M_SMB_ERROR, SMB_CSR(R_SMB_STATUS));
                return -1;
        } else {
  return 0;
 }
}
