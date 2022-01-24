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
struct ppp_mppe_state {unsigned char* master_key; unsigned char* session_key; int /*<<< orphan*/ * arc4; int /*<<< orphan*/ * sha1; struct ppp_mppe_state* sha1_digest; } ;

/* Variables and functions */
 int CILEN_MPPE ; 
 unsigned char CI_MPPE ; 
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int MPPE_MAX_KEY_LEN ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ppp_mppe_state*) ; 
 struct ppp_mppe_state* FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 struct ppp_mppe_state* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static void *FUNC10(unsigned char *options, int optlen)
{
	struct ppp_mppe_state *state;
	unsigned int digestsize;

	if (optlen != CILEN_MPPE + sizeof(state->master_key)
	    || options[0] != CI_MPPE || options[1] != CILEN_MPPE)
		goto out;

	state = FUNC8(sizeof(*state), GFP_KERNEL);
	if (state == NULL)
		goto out;


	state->arc4 = FUNC1("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(state->arc4)) {
		state->arc4 = NULL;
		goto out_free;
	}

	state->sha1 = FUNC2("sha1", 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(state->sha1)) {
		state->sha1 = NULL;
		goto out_free;
	}

	digestsize = FUNC5(state->sha1);
	if (digestsize < MPPE_MAX_KEY_LEN)
		goto out_free;

	state->sha1_digest = FUNC7(digestsize, GFP_KERNEL);
	if (!state->sha1_digest)
		goto out_free;

	/* Save keys. */
	FUNC9(state->master_key, &options[CILEN_MPPE],
	       sizeof(state->master_key));
	FUNC9(state->session_key, state->master_key,
	       sizeof(state->master_key));

	/*
	 * We defer initial key generation until mppe_init(), as mppe_alloc()
	 * is called frequently during negotiation.
	 */

	return (void *)state;

	out_free:
	    if (state->sha1_digest)
		FUNC6(state->sha1_digest);
	    if (state->sha1)
		FUNC4(state->sha1);
	    if (state->arc4)
		FUNC3(state->arc4);
	    FUNC6(state);
	out:
	return NULL;
}