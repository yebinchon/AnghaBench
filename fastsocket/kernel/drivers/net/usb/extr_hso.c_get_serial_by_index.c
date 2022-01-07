
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_serial {int dummy; } ;


 struct hso_serial* dev2ser (scalar_t__) ;
 scalar_t__* serial_table ;
 int serial_table_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct hso_serial *get_serial_by_index(unsigned index)
{
 struct hso_serial *serial = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&serial_table_lock, flags);
 if (serial_table[index])
  serial = dev2ser(serial_table[index]);
 spin_unlock_irqrestore(&serial_table_lock, flags);

 return serial;
}
