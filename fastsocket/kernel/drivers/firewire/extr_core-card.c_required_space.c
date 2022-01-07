
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_descriptor {size_t length; scalar_t__ immediate; } ;



__attribute__((used)) static size_t required_space(struct fw_descriptor *desc)
{

 return desc->length + 1 + (desc->immediate > 0 ? 1 : 0);
}
