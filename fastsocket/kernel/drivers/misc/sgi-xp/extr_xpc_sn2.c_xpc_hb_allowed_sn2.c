
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_bit (short,void*) ;

__attribute__((used)) static int
xpc_hb_allowed_sn2(short partid, void *heartbeating_to_mask)
{
 return test_bit(partid, heartbeating_to_mask);
}
