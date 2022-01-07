
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int inquiry_evpd_88(unsigned char * arr, int target_dev_id)
{
 int num = 0;
 int port_a, port_b;

 port_a = target_dev_id + 1;
 port_b = port_a + 1;
 arr[num++] = 0x0;
 arr[num++] = 0x0;
 arr[num++] = 0x0;
 arr[num++] = 0x1;
 memset(arr + num, 0, 6);
 num += 6;
 arr[num++] = 0x0;
 arr[num++] = 12;

 arr[num++] = 0x61;
 arr[num++] = 0x93;
 arr[num++] = 0x0;
 arr[num++] = 0x8;
 arr[num++] = 0x52;
 arr[num++] = 0x22;
 arr[num++] = 0x22;
 arr[num++] = 0x20;
 arr[num++] = (port_a >> 24);
 arr[num++] = (port_a >> 16) & 0xff;
 arr[num++] = (port_a >> 8) & 0xff;
 arr[num++] = port_a & 0xff;

 arr[num++] = 0x0;
 arr[num++] = 0x0;
 arr[num++] = 0x0;
 arr[num++] = 0x2;
 memset(arr + num, 0, 6);
 num += 6;
 arr[num++] = 0x0;
 arr[num++] = 12;

 arr[num++] = 0x61;
 arr[num++] = 0x93;
 arr[num++] = 0x0;
 arr[num++] = 0x8;
 arr[num++] = 0x52;
 arr[num++] = 0x22;
 arr[num++] = 0x22;
 arr[num++] = 0x20;
 arr[num++] = (port_b >> 24);
 arr[num++] = (port_b >> 16) & 0xff;
 arr[num++] = (port_b >> 8) & 0xff;
 arr[num++] = port_b & 0xff;

 return num;
}
