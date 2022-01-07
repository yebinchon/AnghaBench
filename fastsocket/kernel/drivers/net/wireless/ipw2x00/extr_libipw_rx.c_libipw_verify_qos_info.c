
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libipw_qos_information_element {int qui_subtype; scalar_t__ qui_type; scalar_t__ version; int qui; } ;


 int QOS_OUI_LEN ;
 scalar_t__ QOS_OUI_TYPE ;
 scalar_t__ QOS_VERSION_1 ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int qos_oui ;

__attribute__((used)) static int libipw_verify_qos_info(struct libipw_qos_information_element
         *info_element, int sub_type)
{

 if (info_element->qui_subtype != sub_type)
  return -1;
 if (memcmp(info_element->qui, qos_oui, QOS_OUI_LEN))
  return -1;
 if (info_element->qui_type != QOS_OUI_TYPE)
  return -1;
 if (info_element->version != QOS_VERSION_1)
  return -1;

 return 0;
}
