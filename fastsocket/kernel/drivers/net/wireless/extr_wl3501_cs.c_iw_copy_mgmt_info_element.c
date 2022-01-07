
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_mgmt_info_element {int len; int data; int id; } ;


 int iw_set_mgmt_info_element (int ,struct iw_mgmt_info_element*,int ,int ) ;

__attribute__((used)) static void iw_copy_mgmt_info_element(struct iw_mgmt_info_element *to,
          struct iw_mgmt_info_element *from)
{
 iw_set_mgmt_info_element(from->id, to, from->data, from->len);
}
