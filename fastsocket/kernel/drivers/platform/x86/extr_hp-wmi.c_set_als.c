
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int HPWMI_ALS_QUERY ;
 int hp_wmi_perform_query (int ,int,int ) ;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t set_als(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 u32 tmp = simple_strtoul(buf, ((void*)0), 10);
 hp_wmi_perform_query(HPWMI_ALS_QUERY, 1, tmp);
 return count;
}
