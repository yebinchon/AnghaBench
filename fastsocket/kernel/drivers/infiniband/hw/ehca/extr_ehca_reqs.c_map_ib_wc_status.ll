; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_reqs.c_map_ib_wc_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_reqs.c_map_ib_wc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WC_STATUS_ERROR_BIT = common dso_local global i32 0, align 4
@IB_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_EEC_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_WC_MW_BIND_ERR = common dso_local global i32 0, align 4
@WC_STATUS_REMOTE_ERROR_FLAGS = common dso_local global i32 0, align 4
@IB_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_INV_RD_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ABORT_ERR = common dso_local global i32 0, align 4
@IB_WC_INV_EECN_ERR = common dso_local global i32 0, align 4
@IB_WC_INV_EEC_STATE_ERR = common dso_local global i32 0, align 4
@IB_WC_BAD_RESP_ERR = common dso_local global i32 0, align 4
@IB_WC_FATAL_ERR = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @map_ib_wc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_ib_wc_status(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @WC_STATUS_ERROR_BIT, align 4
  %7 = and i32 %5, %6
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %77

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 63
  switch i32 %12, label %73 [
    i32 1, label %13
    i32 33, label %13
    i32 2, label %16
    i32 34, label %16
    i32 3, label %19
    i32 35, label %19
    i32 4, label %22
    i32 36, label %22
    i32 5, label %25
    i32 37, label %25
    i32 6, label %28
    i32 7, label %31
    i32 8, label %52
    i32 9, label %55
    i32 10, label %58
    i32 45, label %58
    i32 11, label %61
    i32 46, label %61
    i32 12, label %64
    i32 47, label %64
    i32 13, label %67
    i32 16, label %70
  ]

13:                                               ; preds = %10, %10
  %14 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  br label %76

16:                                               ; preds = %10, %10
  %17 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  br label %76

19:                                               ; preds = %10, %10
  %20 = load i32, i32* @IB_WC_LOC_EEC_OP_ERR, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  br label %76

22:                                               ; preds = %10, %10
  %23 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %76

25:                                               ; preds = %10, %10
  %26 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  br label %76

28:                                               ; preds = %10
  %29 = load i32, i32* @IB_WC_MW_BIND_ERR, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  br label %76

31:                                               ; preds = %10
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @WC_STATUS_REMOTE_ERROR_FLAGS, align 4
  %34 = and i32 %32, %33
  %35 = ashr i32 %34, 11
  switch i32 %35, label %51 [
    i32 0, label %36
    i32 1, label %39
    i32 2, label %42
    i32 3, label %45
    i32 4, label %48
  ]

36:                                               ; preds = %31
  %37 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %51

39:                                               ; preds = %31
  %40 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %51

42:                                               ; preds = %31
  %43 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  br label %51

45:                                               ; preds = %31
  %46 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  %47 = load i32*, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  br label %51

48:                                               ; preds = %31
  %49 = load i32, i32* @IB_WC_REM_INV_RD_REQ_ERR, align 4
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %31, %48, %45, %42, %39, %36
  br label %76

52:                                               ; preds = %10
  %53 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  br label %76

55:                                               ; preds = %10
  %56 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  %57 = load i32*, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  br label %76

58:                                               ; preds = %10, %10
  %59 = load i32, i32* @IB_WC_REM_ABORT_ERR, align 4
  %60 = load i32*, i32** %4, align 8
  store i32 %59, i32* %60, align 4
  br label %76

61:                                               ; preds = %10, %10
  %62 = load i32, i32* @IB_WC_INV_EECN_ERR, align 4
  %63 = load i32*, i32** %4, align 8
  store i32 %62, i32* %63, align 4
  br label %76

64:                                               ; preds = %10, %10
  %65 = load i32, i32* @IB_WC_INV_EEC_STATE_ERR, align 4
  %66 = load i32*, i32** %4, align 8
  store i32 %65, i32* %66, align 4
  br label %76

67:                                               ; preds = %10
  %68 = load i32, i32* @IB_WC_BAD_RESP_ERR, align 4
  %69 = load i32*, i32** %4, align 8
  store i32 %68, i32* %69, align 4
  br label %76

70:                                               ; preds = %10
  %71 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  br label %76

73:                                               ; preds = %10
  %74 = load i32, i32* @IB_WC_FATAL_ERR, align 4
  %75 = load i32*, i32** %4, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70, %67, %64, %61, %58, %55, %52, %51, %28, %25, %22, %19, %16, %13
  br label %80

77:                                               ; preds = %2
  %78 = load i32, i32* @IB_WC_SUCCESS, align 4
  %79 = load i32*, i32** %4, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %76
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
