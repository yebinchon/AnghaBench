
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int reset_required; } ;





__attribute__((used)) static bool vmballoon_check_status(struct vmballoon *b, unsigned long status)
{
 switch (status) {
 case 128:
  return 1;

 case 129:
  b->reset_required = 1;


 default:
  return 0;
 }
}
