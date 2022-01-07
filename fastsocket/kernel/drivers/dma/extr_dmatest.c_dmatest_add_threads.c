
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmatest_thread {int type; int node; int task; struct dma_chan* chan; } ;
struct dmatest_chan {int threads; struct dma_chan* chan; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;


 int DMA_MEMCPY ;
 int DMA_PQ ;
 int DMA_XOR ;
 int EINVAL ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int dma_chan_name (struct dma_chan*) ;
 int dmatest_func ;
 int kfree (struct dmatest_thread*) ;
 int kthread_run (int ,struct dmatest_thread*,char*,int ,char*,unsigned int) ;
 struct dmatest_thread* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_warning (char*,int ,char*,unsigned int) ;
 int smp_wmb () ;
 unsigned int threads_per_chan ;

__attribute__((used)) static int dmatest_add_threads(struct dmatest_chan *dtc, enum dma_transaction_type type)
{
 struct dmatest_thread *thread;
 struct dma_chan *chan = dtc->chan;
 char *op;
 unsigned int i;

 if (type == DMA_MEMCPY)
  op = "copy";
 else if (type == DMA_XOR)
  op = "xor";
 else if (type == DMA_PQ)
  op = "pq";
 else
  return -EINVAL;

 for (i = 0; i < threads_per_chan; i++) {
  thread = kzalloc(sizeof(struct dmatest_thread), GFP_KERNEL);
  if (!thread) {
   pr_warning("dmatest: No memory for %s-%s%u\n",
       dma_chan_name(chan), op, i);

   break;
  }
  thread->chan = dtc->chan;
  thread->type = type;
  smp_wmb();
  thread->task = kthread_run(dmatest_func, thread, "%s-%s%u",
    dma_chan_name(chan), op, i);
  if (IS_ERR(thread->task)) {
   pr_warning("dmatest: Failed to run thread %s-%s%u\n",
     dma_chan_name(chan), op, i);
   kfree(thread);
   break;
  }



  list_add_tail(&thread->node, &dtc->threads);
 }

 return i;
}
