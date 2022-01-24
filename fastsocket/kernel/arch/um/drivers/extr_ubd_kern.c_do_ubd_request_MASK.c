#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ubd {scalar_t__ end_sg; scalar_t__ start_sg; struct request* request; int /*<<< orphan*/  restart; struct scatterlist* sg; } ;
struct scatterlist {int length; int /*<<< orphan*/  offset; } ;
struct request_queue {struct ubd* queuedata; } ;
struct request {int dummy; } ;
struct io_thread_req {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct request* FUNC0 (struct request_queue*) ; 
 scalar_t__ FUNC1 (struct request_queue*,struct request*,struct scatterlist*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct io_thread_req*) ; 
 struct io_thread_req* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct io_thread_req**,int) ; 
 int /*<<< orphan*/  FUNC8 (struct request*,struct io_thread_req*,unsigned long long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  restart ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*) ; 
 int /*<<< orphan*/  thread_fd ; 

__attribute__((used)) static void FUNC11(struct request_queue *q)
{
	struct io_thread_req *io_req;
	struct request *req;
	sector_t sector;
	int n;

	while(1){
		struct ubd *dev = q->queuedata;
		if(dev->end_sg == 0){
			struct request *req = FUNC0(q);
			if(req == NULL)
				return;

			dev->request = req;
			dev->start_sg = 0;
			dev->end_sg = FUNC1(q, req, dev->sg);
		}

		req = dev->request;
		sector = FUNC2(req);
		while(dev->start_sg < dev->end_sg){
			struct scatterlist *sg = &dev->sg[dev->start_sg];

			io_req = FUNC4(sizeof(struct io_thread_req),
					 GFP_ATOMIC);
			if(io_req == NULL){
				if(FUNC6(&dev->restart))
					FUNC5(&dev->restart, &restart);
				return;
			}
			FUNC8(req, io_req,
					(unsigned long long)sector << 9,
					sg->offset, sg->length, FUNC10(sg));

			sector += sg->length >> 9;
			n = FUNC7(thread_fd, &io_req,
					  sizeof(struct io_thread_req *));
			if(n != sizeof(struct io_thread_req *)){
				if(n != -EAGAIN)
					FUNC9("write to io thread failed, "
					       "errno = %d\n", -n);
				else if(FUNC6(&dev->restart))
					FUNC5(&dev->restart, &restart);
				FUNC3(io_req);
				return;
			}

			dev->start_sg++;
		}
		dev->end_sg = 0;
		dev->request = NULL;
	}
}