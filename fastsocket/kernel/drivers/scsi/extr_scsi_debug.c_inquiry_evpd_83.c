
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int b ;


 char* inq_product_id ;
 char* inq_vendor_id ;
 int memcpy (unsigned char*,char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int inquiry_evpd_83(unsigned char * arr, int port_group_id,
      int target_dev_id, int dev_id_num,
      const char * dev_id_str,
      int dev_id_str_len)
{
 int num, port_a;
 char b[32];

 port_a = target_dev_id + 1;

 arr[0] = 0x2;
 arr[1] = 0x1;
 arr[2] = 0x0;
 memcpy(&arr[4], inq_vendor_id, 8);
 memcpy(&arr[12], inq_product_id, 16);
 memcpy(&arr[28], dev_id_str, dev_id_str_len);
 num = 8 + 16 + dev_id_str_len;
 arr[3] = num;
 num += 4;
 if (dev_id_num >= 0) {

  arr[num++] = 0x1;
  arr[num++] = 0x3;
  arr[num++] = 0x0;
  arr[num++] = 0x8;
  arr[num++] = 0x53;
  arr[num++] = 0x33;
  arr[num++] = 0x33;
  arr[num++] = 0x30;
  arr[num++] = (dev_id_num >> 24);
  arr[num++] = (dev_id_num >> 16) & 0xff;
  arr[num++] = (dev_id_num >> 8) & 0xff;
  arr[num++] = dev_id_num & 0xff;

  arr[num++] = 0x61;
  arr[num++] = 0x94;
  arr[num++] = 0x0;
  arr[num++] = 0x4;
  arr[num++] = 0x0;
  arr[num++] = 0x0;
  arr[num++] = 0x0;
  arr[num++] = 0x1;
 }

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

 arr[num++] = 0x61;
 arr[num++] = 0x95;
 arr[num++] = 0x0;
 arr[num++] = 0x4;
 arr[num++] = 0;
 arr[num++] = 0;
 arr[num++] = (port_group_id >> 8) & 0xff;
 arr[num++] = port_group_id & 0xff;

 arr[num++] = 0x61;
 arr[num++] = 0xa3;
 arr[num++] = 0x0;
 arr[num++] = 0x8;
 arr[num++] = 0x52;
 arr[num++] = 0x22;
 arr[num++] = 0x22;
 arr[num++] = 0x20;
 arr[num++] = (target_dev_id >> 24);
 arr[num++] = (target_dev_id >> 16) & 0xff;
 arr[num++] = (target_dev_id >> 8) & 0xff;
 arr[num++] = target_dev_id & 0xff;

 arr[num++] = 0x63;
 arr[num++] = 0xa8;
 arr[num++] = 0x0;
 arr[num++] = 24;
 memcpy(arr + num, "naa.52222220", 12);
 num += 12;
 snprintf(b, sizeof(b), "%08X", target_dev_id);
 memcpy(arr + num, b, 8);
 num += 8;
 memset(arr + num, 0, 4);
 num += 4;
 return num;
}
