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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ipw_priv {int /*<<< orphan*/  config; int /*<<< orphan*/  status; } ;
struct ipw_fw_error {int elem_len; int log_len; struct ipw_error_elem* elem; struct ipw_event* log; scalar_t__ payload; int /*<<< orphan*/  config; int /*<<< orphan*/  status; int /*<<< orphan*/  jiffies; } ;
struct ipw_event {int dummy; } ;
struct ipw_error_elem {int dummy; } ;
typedef  int /*<<< orphan*/  base ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_ERROR_LOG ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,int,struct ipw_event*) ; 
 int FUNC2 (struct ipw_priv*) ; 
 int FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct ipw_priv*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 struct ipw_fw_error* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ipw_fw_error *FUNC7(struct ipw_priv *priv)
{
	struct ipw_fw_error *error;
	u32 log_len = FUNC2(priv);
	u32 base = FUNC3(priv, IPW_ERROR_LOG);
	u32 elem_len = FUNC5(priv, base);

	error = FUNC6(sizeof(*error) +
			sizeof(*error->elem) * elem_len +
			sizeof(*error->log) * log_len, GFP_ATOMIC);
	if (!error) {
		FUNC0("Memory allocation for firmware error log "
			  "failed.\n");
		return NULL;
	}
	error->jiffies = jiffies;
	error->status = priv->status;
	error->config = priv->config;
	error->elem_len = elem_len;
	error->log_len = log_len;
	error->elem = (struct ipw_error_elem *)error->payload;
	error->log = (struct ipw_event *)(error->elem + elem_len);

	FUNC1(priv, log_len, error->log);

	if (elem_len)
		FUNC4(priv, base + sizeof(base), (u8 *) error->elem,
				  sizeof(*error->elem) * elem_len);

	return error;
}