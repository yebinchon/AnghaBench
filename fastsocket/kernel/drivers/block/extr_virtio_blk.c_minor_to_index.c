
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PART_BITS ;

__attribute__((used)) static int minor_to_index(int minor)
{
 return minor >> PART_BITS;
}
