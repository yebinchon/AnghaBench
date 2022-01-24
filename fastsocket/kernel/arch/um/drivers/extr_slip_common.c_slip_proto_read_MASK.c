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
struct slip_proto {int more; size_t pos; int /*<<< orphan*/ * ibuf; int /*<<< orphan*/  esc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 

int FUNC4(int fd, void *buf, int len, struct slip_proto *slip)
{
	int i, n, size, start;

	if(slip->more > 0){
		i = 0;
		while(i < slip->more){
			size = FUNC3(slip->ibuf[i++], slip->ibuf,
					  &slip->pos, &slip->esc);
			if(size){
				FUNC0(buf, slip->ibuf, size);
				FUNC1(slip->ibuf, &slip->ibuf[i],
					slip->more - i);
				slip->more = slip->more - i;
				return size;
			}
		}
		slip->more = 0;
	}

	n = FUNC2(fd, &slip->ibuf[slip->pos],
		     sizeof(slip->ibuf) - slip->pos);
	if(n <= 0)
		return n;

	start = slip->pos;
	for(i = 0; i < n; i++){
		size = FUNC3(slip->ibuf[start + i], slip->ibuf,&slip->pos,
				  &slip->esc);
		if(size){
			FUNC0(buf, slip->ibuf, size);
			FUNC1(slip->ibuf, &slip->ibuf[start+i+1],
				n - (i + 1));
			slip->more = n - (i + 1);
			return size;
		}
	}
	return 0;
}