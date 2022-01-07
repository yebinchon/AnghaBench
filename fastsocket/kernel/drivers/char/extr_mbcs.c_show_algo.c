
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mbcs_soft {scalar_t__ debug_addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cx_dev {struct mbcs_soft* soft; } ;
typedef int ssize_t ;


 int lower_32_bits (int ) ;
 int sprintf (char*,char*,int,int) ;
 struct cx_dev* to_cx_dev (struct device*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static ssize_t show_algo(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct cx_dev *cx_dev = to_cx_dev(dev);
 struct mbcs_soft *soft = cx_dev->soft;
 uint64_t debug0;





 debug0 = *(uint64_t *) soft->debug_addr;

 return sprintf(buf, "0x%x 0x%x\n",
         upper_32_bits(debug0), lower_32_bits(debug0));
}
