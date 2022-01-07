
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int dummy; } ;
struct cryptd_queue {int cpu_queue; } ;
struct cryptd_cpu_queue {int work; int queue; } ;


 int crypto_enqueue_request (int *,struct crypto_async_request*) ;
 int get_cpu () ;
 int kcrypto_wq ;
 struct cryptd_cpu_queue* per_cpu_ptr (int ,int) ;
 int put_cpu () ;
 int queue_work_on (int,int ,int *) ;

__attribute__((used)) static int cryptd_enqueue_request(struct cryptd_queue *queue,
      struct crypto_async_request *request)
{
 int cpu, err;
 struct cryptd_cpu_queue *cpu_queue;

 cpu = get_cpu();
 cpu_queue = per_cpu_ptr(queue->cpu_queue, cpu);
 err = crypto_enqueue_request(&cpu_queue->queue, request);
 queue_work_on(cpu, kcrypto_wq, &cpu_queue->work);
 put_cpu();

 return err;
}
