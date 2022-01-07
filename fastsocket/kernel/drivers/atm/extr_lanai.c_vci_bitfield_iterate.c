
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vci_t ;
struct lanai_dev {int dummy; } ;


 scalar_t__ NUM_VCI ;
 scalar_t__ find_first_bit (unsigned long const*,scalar_t__) ;
 scalar_t__ find_next_bit (unsigned long const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void vci_bitfield_iterate(struct lanai_dev *lanai,
 const unsigned long *lp,
 void (*func)(struct lanai_dev *,vci_t vci))
{
 vci_t vci = find_first_bit(lp, NUM_VCI);
 while (vci < NUM_VCI) {
  func(lanai, vci);
  vci = find_next_bit(lp, NUM_VCI, vci + 1);
 }
}
