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
struct mlx4_qp_table {int /*<<< orphan*/  qp_table; int /*<<< orphan*/  auxc_table; int /*<<< orphan*/  altc_table; int /*<<< orphan*/  rdmarc_table; int /*<<< orphan*/  cmpt_table; } ;
struct mlx4_priv {struct mlx4_qp_table qp_table; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 struct mlx4_priv* FUNC0 (struct mlx4_dev*) ; 
 int FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ *,int) ; 

int FUNC3(struct mlx4_dev *dev, int qpn)
{
	struct mlx4_priv *priv = FUNC0(dev);
	struct mlx4_qp_table *qp_table = &priv->qp_table;
	int err;

	err = FUNC1(dev, &qp_table->qp_table, qpn);
	if (err)
		goto err_out;

	err = FUNC1(dev, &qp_table->auxc_table, qpn);
	if (err)
		goto err_put_qp;

	err = FUNC1(dev, &qp_table->altc_table, qpn);
	if (err)
		goto err_put_auxc;

	err = FUNC1(dev, &qp_table->rdmarc_table, qpn);
	if (err)
		goto err_put_altc;

	err = FUNC1(dev, &qp_table->cmpt_table, qpn);
	if (err)
		goto err_put_rdmarc;

	return 0;

err_put_rdmarc:
	FUNC2(dev, &qp_table->rdmarc_table, qpn);

err_put_altc:
	FUNC2(dev, &qp_table->altc_table, qpn);

err_put_auxc:
	FUNC2(dev, &qp_table->auxc_table, qpn);

err_put_qp:
	FUNC2(dev, &qp_table->qp_table, qpn);

err_out:
	return err;
}