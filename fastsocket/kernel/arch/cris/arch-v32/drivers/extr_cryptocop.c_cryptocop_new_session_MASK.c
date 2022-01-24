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
struct cryptocop_transform_init {scalar_t__ tid; struct cryptocop_transform_init* next; } ;
struct cryptocop_transform_ctx {int dummy; } ;
struct cryptocop_session {int sid; struct cryptocop_session* next; struct cryptocop_session* tfrm_ctx; scalar_t__ dec_key_set; int /*<<< orphan*/  init; } ;
typedef  int cryptocop_session_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct cryptocop_session* cryptocop_sessions ; 
 int /*<<< orphan*/  cryptocop_sessions_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cryptocop_session*) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct cryptocop_transform_init*,int) ; 
 int next_sid ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct cryptocop_transform_init*) ; 

int FUNC9(cryptocop_session_id *sid, struct cryptocop_transform_init *tinit, int alloc_flag)
{
	struct cryptocop_session         *sess;
	struct cryptocop_transform_init  *tfrm_in = tinit;
	struct cryptocop_transform_init  *tmp_in;
	int                              no_tfrms = 0;
	int                              i;
	unsigned long int                flags;

	FUNC1(); /* For safety if we are called early */

	while (tfrm_in){
		int err;
		++no_tfrms;
		if ((err = FUNC8(tfrm_in))) {
			FUNC0(FUNC5("cryptocop_new_session, bad transform\n"));
			return err;
		}
		tfrm_in = tfrm_in->next;
	}
	if (0 == no_tfrms) {
		FUNC0(FUNC5("cryptocop_new_session, no transforms specified\n"));
		return -EINVAL;
	}

	sess = FUNC3(sizeof(struct cryptocop_session), alloc_flag);
	if (!sess){
		FUNC0(FUNC5("cryptocop_new_session, kmalloc cryptocop_session\n"));
		return -ENOMEM;
	}

	sess->tfrm_ctx = FUNC3(no_tfrms * sizeof(struct cryptocop_transform_ctx), alloc_flag);
	if (!sess->tfrm_ctx) {
		FUNC0(FUNC5("cryptocop_new_session, kmalloc cryptocop_transform_ctx\n"));
		FUNC2(sess);
		return -ENOMEM;
	}

	tfrm_in = tinit;
	for (i = 0; i < no_tfrms; i++){
		tmp_in = tfrm_in->next;
		while (tmp_in){
			if (tmp_in->tid == tfrm_in->tid) {
				FUNC0(FUNC5("cryptocop_new_session, duplicate transform ids\n"));
				FUNC2(sess->tfrm_ctx);
				FUNC2(sess);
				return -EINVAL;
			}
			tmp_in = tmp_in->next;
		}
		FUNC4(&sess->tfrm_ctx[i].init, tfrm_in, sizeof(struct cryptocop_transform_init));
		sess->tfrm_ctx[i].dec_key_set = 0;
		sess->tfrm_ctx[i].next = &sess->tfrm_ctx[i] + 1;

		tfrm_in = tfrm_in->next;
	}
	sess->tfrm_ctx[i-1].next = NULL;

	FUNC6(&cryptocop_sessions_lock, flags);
	sess->sid = next_sid;
	next_sid++;
	/* TODO If we are really paranoid we should do duplicate check to handle sid wraparound.
	 *      OTOH 2^64 is a really large number of session. */
	if (next_sid == 0) next_sid = 1;

	/* Prepend to session list. */
	sess->next = cryptocop_sessions;
	cryptocop_sessions = sess;
	FUNC7(&cryptocop_sessions_lock, flags);
	*sid = sess->sid;
	return 0;
}