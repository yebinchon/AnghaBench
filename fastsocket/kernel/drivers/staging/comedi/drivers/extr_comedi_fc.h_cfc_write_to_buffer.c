
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
typedef int data ;


 unsigned int cfc_write_array_to_buffer (struct comedi_subdevice*,short*,int) ;

__attribute__((used)) static inline unsigned int cfc_write_to_buffer(struct comedi_subdevice *subd,
            short data)
{
 return cfc_write_array_to_buffer(subd, &data, sizeof(data));
}
