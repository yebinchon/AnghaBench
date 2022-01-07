
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_protocol_driver {int dummy; } ;


 int THIS_MODULE ;
 int __hpsb_register_protocol (struct hpsb_protocol_driver*,int ) ;

__attribute__((used)) static inline int hpsb_register_protocol(struct hpsb_protocol_driver *driver)
{
 return __hpsb_register_protocol(driver, THIS_MODULE);
}
