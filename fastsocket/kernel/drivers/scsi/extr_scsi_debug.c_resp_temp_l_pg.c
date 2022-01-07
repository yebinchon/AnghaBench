
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp_l_pg ;


 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int resp_temp_l_pg(unsigned char * arr)
{
 unsigned char temp_l_pg[] = {0x0, 0x0, 0x3, 0x2, 0x0, 38,
         0x0, 0x1, 0x3, 0x2, 0x0, 65,
  };

        memcpy(arr, temp_l_pg, sizeof(temp_l_pg));
        return sizeof(temp_l_pg);
}
