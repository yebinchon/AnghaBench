; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_to_ibwc_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_to_ibwc_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_EEC_OP_ERR = common dso_local global i32 0, align 4
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
@IB_WC_LOC_RDD_VIOL_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_INV_RD_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ABORT_ERR = common dso_local global i32 0, align 4
@IB_WC_INV_EECN_ERR = common dso_local global i32 0, align 4
@IB_WC_INV_EEC_STATE_ERR = common dso_local global i32 0, align 4
@IB_WC_FATAL_ERR = common dso_local global i32 0, align 4
@IB_WC_RESP_TIMEOUT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ocrdma_to_ibwc_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_to_ibwc_err(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %48 [
    i32 146, label %6
    i32 141, label %8
    i32 139, label %10
    i32 142, label %12
    i32 140, label %14
    i32 128, label %16
    i32 137, label %18
    i32 148, label %20
    i32 143, label %22
    i32 133, label %24
    i32 135, label %26
    i32 132, label %28
    i32 130, label %30
    i32 129, label %32
    i32 138, label %34
    i32 134, label %36
    i32 136, label %38
    i32 145, label %40
    i32 144, label %42
    i32 147, label %44
    i32 131, label %46
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %7, i32* %3, align 4
  br label %50

8:                                                ; preds = %1
  %9 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  store i32 %9, i32* %3, align 4
  br label %50

10:                                               ; preds = %1
  %11 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  store i32 %11, i32* %3, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load i32, i32* @IB_WC_LOC_EEC_OP_ERR, align 4
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load i32, i32* @IB_WC_MW_BIND_ERR, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %1
  %21 = load i32, i32* @IB_WC_BAD_RESP_ERR, align 4
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %1
  %23 = load i32, i32* @IB_WC_LOC_ACCESS_ERR, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %1
  %25 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %1
  %27 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %1
  %29 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %29, i32* %3, align 4
  br label %50

30:                                               ; preds = %1
  %31 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %1
  %33 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %1
  %35 = load i32, i32* @IB_WC_LOC_RDD_VIOL_ERR, align 4
  store i32 %35, i32* %3, align 4
  br label %50

36:                                               ; preds = %1
  %37 = load i32, i32* @IB_WC_REM_INV_RD_REQ_ERR, align 4
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %1
  %39 = load i32, i32* @IB_WC_REM_ABORT_ERR, align 4
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %1
  %41 = load i32, i32* @IB_WC_INV_EECN_ERR, align 4
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %1
  %43 = load i32, i32* @IB_WC_INV_EEC_STATE_ERR, align 4
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %1
  %45 = load i32, i32* @IB_WC_FATAL_ERR, align 4
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %1
  %47 = load i32, i32* @IB_WC_RESP_TIMEOUT_ERR, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %1
  %49 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
