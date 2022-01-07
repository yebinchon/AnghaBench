
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int inquiry_evpd_b1(unsigned char *arr)
{
 memset(arr, 0, 0x3c);
 arr[0] = 0;
 arr[1] = 1;
 arr[2] = 0;
 arr[3] = 5;

 return 0x3c;
}
