
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ie_l_pg ;


 unsigned char THRESHOLD_EXCEEDED ;
 int* iec_m_pg ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int resp_ie_l_pg(unsigned char * arr)
{
 unsigned char ie_l_pg[] = {0x0, 0x0, 0x3, 0x3, 0x0, 0x0, 38,
  };

        memcpy(arr, ie_l_pg, sizeof(ie_l_pg));
 if (iec_m_pg[2] & 0x4) {
  arr[4] = THRESHOLD_EXCEEDED;
  arr[5] = 0xff;
 }
        return sizeof(ie_l_pg);
}
