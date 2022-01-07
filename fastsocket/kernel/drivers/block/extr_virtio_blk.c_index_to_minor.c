
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PART_BITS ;

__attribute__((used)) static int index_to_minor(int index)
{
 return index << PART_BITS;
}
