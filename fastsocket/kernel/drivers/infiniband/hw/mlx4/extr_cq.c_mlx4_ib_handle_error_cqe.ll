; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_handle_error_cqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_handle_error_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_err_cqe = type { i32, i32, i32, i32, i32 }
%struct.ib_wc = type { i32, i32 }

@.str = private unnamed_addr constant [86 x i8] c"local QP operation err (QPN %06x, WQE index %x, vendor syndrome %02x, opcode = %02x)\0A\00", align 1
@MLX4_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@IB_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_WC_MW_BIND_ERR = common dso_local global i32 0, align 4
@IB_WC_BAD_RESP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ABORT_ERR = common dso_local global i32 0, align 4
@IB_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_err_cqe*, %struct.ib_wc*)* @mlx4_ib_handle_error_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_handle_error_cqe(%struct.mlx4_err_cqe* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.mlx4_err_cqe*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  store %struct.mlx4_err_cqe* %0, %struct.mlx4_err_cqe** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %5 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 136
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @be32_to_cpu(i32 %12)
  %14 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be16_to_cpu(i32 %16)
  %18 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MLX4_CQE_OWNER_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %20, i32 %26)
  %28 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %3, align 8
  %29 = call i32 @dump_cqe(%struct.mlx4_err_cqe* %28)
  br label %30

30:                                               ; preds = %9, %2
  %31 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %3, align 8
  %32 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %86 [
    i32 138, label %34
    i32 136, label %38
    i32 137, label %42
    i32 128, label %46
    i32 135, label %50
    i32 140, label %54
    i32 139, label %58
    i32 132, label %62
    i32 133, label %66
    i32 131, label %70
    i32 129, label %74
    i32 130, label %78
    i32 134, label %82
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  %36 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %37 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %90

38:                                               ; preds = %30
  %39 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  %40 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %41 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %90

42:                                               ; preds = %30
  %43 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  %44 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %45 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %90

46:                                               ; preds = %30
  %47 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %48 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %49 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %90

50:                                               ; preds = %30
  %51 = load i32, i32* @IB_WC_MW_BIND_ERR, align 4
  %52 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %53 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %90

54:                                               ; preds = %30
  %55 = load i32, i32* @IB_WC_BAD_RESP_ERR, align 4
  %56 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %57 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %90

58:                                               ; preds = %30
  %59 = load i32, i32* @IB_WC_LOC_ACCESS_ERR, align 4
  %60 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %61 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %90

62:                                               ; preds = %30
  %63 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  %64 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %65 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %90

66:                                               ; preds = %30
  %67 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  %68 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %69 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %90

70:                                               ; preds = %30
  %71 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  %72 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %73 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %90

74:                                               ; preds = %30
  %75 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  %76 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %77 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %90

78:                                               ; preds = %30
  %79 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  %80 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %81 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %90

82:                                               ; preds = %30
  %83 = load i32, i32* @IB_WC_REM_ABORT_ERR, align 4
  %84 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %85 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %30
  %87 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  %88 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %89 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34
  %91 = load %struct.mlx4_err_cqe*, %struct.mlx4_err_cqe** %3, align 8
  %92 = getelementptr inbounds %struct.mlx4_err_cqe, %struct.mlx4_err_cqe* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %95 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dump_cqe(%struct.mlx4_err_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
