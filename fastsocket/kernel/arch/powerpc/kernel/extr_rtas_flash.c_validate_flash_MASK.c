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
typedef  int /*<<< orphan*/  u32 ;
struct rtas_validate_flash_t {int update_results; scalar_t__ status; int /*<<< orphan*/  buf; int /*<<< orphan*/  buf_size; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  VALIDATE_BUF_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int,int,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtas_data_buf ; 
 int /*<<< orphan*/  rtas_data_buf_lock ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rtas_validate_flash_t *args_buf)
{
	int token = FUNC4("ibm,validate-flash-image");
	int update_results;
	s32 rc;	

	rc = 0;
	do {
		FUNC5(&rtas_data_buf_lock);
		FUNC1(rtas_data_buf, args_buf->buf, VALIDATE_BUF_SIZE);
		rc = FUNC3(token, 2, 2, &update_results, 
			       (u32) FUNC0(rtas_data_buf), args_buf->buf_size);
		FUNC1(args_buf->buf, rtas_data_buf, VALIDATE_BUF_SIZE);
		FUNC6(&rtas_data_buf_lock);
	} while (FUNC2(rc));

	args_buf->status = rc;
	args_buf->update_results = update_results;
}