
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 struct device* add_numbered_child (unsigned int,char const*,int,void*,unsigned int,int,int,int) ;

__attribute__((used)) static inline struct device *add_child(unsigned chip, const char *name,
  void *pdata, unsigned pdata_len,
  bool can_wakeup, int irq0, int irq1)
{
 return add_numbered_child(chip, name, -1, pdata, pdata_len,
  can_wakeup, irq0, irq1);
}
