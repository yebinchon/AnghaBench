
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ah {int uobject; } ;


 int put_uobj_read (int ) ;

__attribute__((used)) static void put_ah_read(struct ib_ah *ah)
{
 put_uobj_read(ah->uobject);
}
