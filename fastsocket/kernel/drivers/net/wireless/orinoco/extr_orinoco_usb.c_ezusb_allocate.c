
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hermes {int dummy; } ;


 int EZUSB_RID_TX ;

__attribute__((used)) static int ezusb_allocate(struct hermes *hw, u16 size, u16 *fid)
{
 *fid = EZUSB_RID_TX;
 return 0;
}
