
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DECLARE_PCI_UNMAP_ADDR ;



__attribute__((used)) static inline int need_skb_unmap(void)
{




 struct dummy {
  DECLARE_PCI_UNMAP_ADDR(addr);
 };

 return sizeof(struct dummy) != 0;
}
