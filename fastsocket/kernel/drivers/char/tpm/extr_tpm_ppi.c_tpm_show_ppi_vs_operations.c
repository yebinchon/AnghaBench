
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PPI_VS_REQ_END ;
 int PPI_VS_REQ_START ;
 int show_ppi_operations (char*,int ,int ) ;

__attribute__((used)) static ssize_t tpm_show_ppi_vs_operations(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 return show_ppi_operations(buf, PPI_VS_REQ_START, PPI_VS_REQ_END);
}
