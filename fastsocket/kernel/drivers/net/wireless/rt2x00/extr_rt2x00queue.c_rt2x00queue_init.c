
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
struct data_queue {int qid; int aifs; int cw_min; int cw_max; scalar_t__ txop; struct rt2x00_dev* rt2x00dev; int index_lock; int tx_lock; int status_lock; } ;
typedef enum data_queue_qid { ____Placeholder_data_queue_qid } data_queue_qid ;


 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void rt2x00queue_init(struct rt2x00_dev *rt2x00dev,
        struct data_queue *queue, enum data_queue_qid qid)
{
 mutex_init(&queue->status_lock);
 spin_lock_init(&queue->tx_lock);
 spin_lock_init(&queue->index_lock);

 queue->rt2x00dev = rt2x00dev;
 queue->qid = qid;
 queue->txop = 0;
 queue->aifs = 2;
 queue->cw_min = 5;
 queue->cw_max = 10;
}
