
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int (* read32_mbox ) (struct tg3*,int ) ;int (* write32_mbox ) (struct tg3*,int ,int ) ;} ;


 int FLUSH_POSTED_WRITES ;
 int ICH_WORKAROUND ;
 int MBOX_WRITE_REORDER ;
 int stub1 (struct tg3*,int ,int ) ;
 int stub2 (struct tg3*,int ) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;

__attribute__((used)) static inline void tw32_mailbox_flush(struct tg3 *tp, u32 off, u32 val)
{
 tp->write32_mbox(tp, off, val);
 if (tg3_flag(tp, FLUSH_POSTED_WRITES) ||
     (!tg3_flag(tp, MBOX_WRITE_REORDER) &&
      !tg3_flag(tp, ICH_WORKAROUND)))
  tp->read32_mbox(tp, off);
}
