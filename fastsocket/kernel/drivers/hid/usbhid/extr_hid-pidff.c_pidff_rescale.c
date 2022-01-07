
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_field {int logical_maximum; int logical_minimum; } ;



__attribute__((used)) static int pidff_rescale(int i, int max, struct hid_field *field)
{
 return i * (field->logical_maximum - field->logical_minimum) / max +
     field->logical_minimum;
}
