
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql3_adapter {int mac_index; int hw_lock; } ;


 int QL_PHY_GIO_SEM_MASK ;
 int QL_RESOURCE_BITS_BASE_CODE ;
 int ql_get_link_speed (struct ql3_adapter*) ;
 scalar_t__ ql_sem_spinlock (struct ql3_adapter*,int ,int) ;
 int ql_sem_unlock (struct ql3_adapter*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 ql_get_speed(struct ql3_adapter *qdev)
{
 u32 status;
 unsigned long hw_flags;
 spin_lock_irqsave(&qdev->hw_lock, hw_flags);
 if(ql_sem_spinlock(qdev, QL_PHY_GIO_SEM_MASK,
  (QL_RESOURCE_BITS_BASE_CODE | (qdev->mac_index) *
    2) << 7)) {
  spin_unlock_irqrestore(&qdev->hw_lock, hw_flags);
  return 0;
 }
 status = ql_get_link_speed(qdev);
 ql_sem_unlock(qdev, QL_PHY_GIO_SEM_MASK);
 spin_unlock_irqrestore(&qdev->hw_lock, hw_flags);
 return status;
}
