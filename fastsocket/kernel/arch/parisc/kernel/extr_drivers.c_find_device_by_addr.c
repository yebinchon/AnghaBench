
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {int dummy; } ;
struct find_data {unsigned long hpa; struct parisc_device* dev; } ;


 int find_device ;
 int for_each_padev (int ,struct find_data*) ;

__attribute__((used)) static struct parisc_device *find_device_by_addr(unsigned long hpa)
{
 struct find_data d = {
  .hpa = hpa,
 };
 int ret;

 ret = for_each_padev(find_device, &d);
 return ret ? d.dev : ((void*)0);
}
