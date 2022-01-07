
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ttusb {int semusb; int last_result; } ;


 int memcpy (int *,int ,int) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ttusb_result(struct ttusb *ttusb, u8 * data, int len)
{
 memcpy(data, ttusb->last_result, len);
 mutex_unlock(&ttusb->semusb);
 return 0;
}
