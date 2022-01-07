
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int offset; } ;
struct fs_dev {int dummy; } ;
struct FS_QENTRY {int dummy; } ;


 int Q_ADDR_MASK ;
 int Q_WP (int ) ;
 struct FS_QENTRY* bus_to_virt (int) ;
 int read_fs (struct fs_dev*,int ) ;

__attribute__((used)) static inline struct FS_QENTRY *get_qentry (struct fs_dev *dev, struct queue *q)
{
 return bus_to_virt (read_fs (dev, Q_WP(q->offset)) & Q_ADDR_MASK);
}
