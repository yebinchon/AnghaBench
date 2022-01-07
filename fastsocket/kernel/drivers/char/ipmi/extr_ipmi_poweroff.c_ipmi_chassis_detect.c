
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipmi_user_t ;


 int capabilities ;

__attribute__((used)) static int ipmi_chassis_detect(ipmi_user_t user)
{

 return (capabilities & 0x80);
}
