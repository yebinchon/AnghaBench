
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cper_record_header {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int __erst_read (int ,struct cper_record_header*,size_t) ;
 scalar_t__ erst_disable ;
 int erst_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

ssize_t erst_read(u64 record_id, struct cper_record_header *record,
    size_t buflen)
{
 ssize_t len;
 unsigned long flags;

 if (erst_disable)
  return -ENODEV;

 spin_lock_irqsave(&erst_lock, flags);
 len = __erst_read(record_id, record, buflen);
 spin_unlock_irqrestore(&erst_lock, flags);
 return len;
}
