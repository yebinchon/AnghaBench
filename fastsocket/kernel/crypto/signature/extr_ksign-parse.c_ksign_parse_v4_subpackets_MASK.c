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
typedef  int uint8_t ;
struct ksign_signature {int /*<<< orphan*/  have; void** keyid; void* timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBADMSG ; 
 int /*<<< orphan*/  KSIGN_HAVE_KEYID ; 
 int /*<<< orphan*/  KSIGN_HAVE_TIMESTAMP ; 
#define  SIGSUBPKT_ISSUER 129 
#define  SIGSUBPKT_SIG_CREATED 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int const**) ; 

__attribute__((used)) static int FUNC3(struct ksign_signature *sig,
				     const uint8_t *datap,
				     size_t n)
{
	size_t m;
	uint8_t type;

	while (n > 0) {
		/* extract the length */
		m = *datap++;
		n--;
		if (m == 0)
			continue;
		if (m > 192 && m < 255) {
			if (n < 192)
				goto too_short;
			m -= 192;
			m <<= 8;
			m += *datap++;
			m += 192;
			n--;
		} else if (m == 255) {
			if (n < 4)
				goto too_short;
			m = FUNC2(&datap);
			n -= 4;
			if (m == 0)
				goto too_short;
		}
		if (m > n)
			return -EBADMSG;
		n -= m;

		type = *datap++;
		m--;

		switch (type & 0x7f) {
		case SIGSUBPKT_SIG_CREATED:
			if (m < 4)
				goto too_short;
			sig->timestamp = FUNC2(&datap);
			sig->have |= KSIGN_HAVE_TIMESTAMP;
			break;

		case SIGSUBPKT_ISSUER:
			if (m < 8)
				goto too_short;
			sig->keyid[0] = FUNC2(&datap);
			sig->keyid[1] = FUNC2(&datap);
			sig->have |= KSIGN_HAVE_KEYID;
			break;

		default:
			datap += m;
			break;
		}
	}

	FUNC0(n != 0);
	return 0;

too_short:
	FUNC1("ksign: signature subpkt too short\n");
	return -EBADMSG;
}