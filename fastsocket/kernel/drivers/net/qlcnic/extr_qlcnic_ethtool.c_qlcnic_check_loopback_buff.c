
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int QLCNIC_ILB_PKT_SIZE ;
 int memcmp (unsigned char*,unsigned char*,int) ;
 int qlcnic_create_loopback_buff (unsigned char*,int *) ;

int qlcnic_check_loopback_buff(unsigned char *data, u8 mac[])
{
 unsigned char buff[QLCNIC_ILB_PKT_SIZE];
 qlcnic_create_loopback_buff(buff, mac);
 return memcmp(data, buff, QLCNIC_ILB_PKT_SIZE);
}
