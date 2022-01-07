; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_rx_arbiter_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_82599.c_ixgbe_dcb_config_rx_arbiter_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_RTRPCS_RRM = common dso_local global i64 0, align 8
@IXGBE_RTRPCS_RAC = common dso_local global i64 0, align 8
@IXGBE_RTRPCS_ARBDIS = common dso_local global i64 0, align 8
@IXGBE_RTRPCS = common dso_local global i32 0, align 4
@MAX_USER_PRIORITY = common dso_local global i64 0, align 8
@IXGBE_RTRUP2TC_UP_SHIFT = common dso_local global i64 0, align 8
@IXGBE_RTRUP2TC = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@IXGBE_RTRPT4C_MCL_SHIFT = common dso_local global i64 0, align 8
@IXGBE_RTRPT4C_BWG_SHIFT = common dso_local global i64 0, align 8
@prio_link = common dso_local global i64 0, align 8
@IXGBE_RTRPT4C_LSP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_rx_arbiter_82599(%struct.ixgbe_hw* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* @IXGBE_RTRPCS_RRM, align 8
  %18 = load i64, i64* @IXGBE_RTRPCS_RAC, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @IXGBE_RTRPCS_ARBDIS, align 8
  %21 = or i64 %19, %20
  store i64 %21, i64* %13, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %23 = load i32, i32* @IXGBE_RTRPCS, align 4
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %22, i32 %23, i64 %24)
  store i64 0, i64* %13, align 8
  store i64 0, i64* %16, align 8
  br label %26

26:                                               ; preds = %41, %6
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* @MAX_USER_PRIORITY, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i64*, i64** %12, align 8
  %32 = load i64, i64* %16, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %16, align 8
  %36 = load i64, i64* @IXGBE_RTRUP2TC_UP_SHIFT, align 8
  %37 = mul i64 %35, %36
  %38 = shl i64 %34, %37
  %39 = load i64, i64* %13, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %30
  %42 = load i64, i64* %16, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %16, align 8
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %46 = load i32, i32* @IXGBE_RTRUP2TC, align 4
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %45, i32 %46, i64 %47)
  store i64 0, i64* %16, align 8
  br label %49

49:                                               ; preds = %91, %44
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* @MAX_TRAFFIC_CLASS, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %49
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %16, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %14, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %16, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @IXGBE_RTRPT4C_MCL_SHIFT, align 8
  %65 = shl i64 %63, %64
  %66 = or i64 %62, %65
  store i64 %66, i64* %13, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = load i64, i64* %16, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IXGBE_RTRPT4C_BWG_SHIFT, align 8
  %72 = shl i64 %70, %71
  %73 = load i64, i64* %13, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %13, align 8
  %75 = load i64*, i64** %11, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @prio_link, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %53
  %82 = load i64, i64* @IXGBE_RTRPT4C_LSP, align 8
  %83 = load i64, i64* %13, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %13, align 8
  br label %85

85:                                               ; preds = %81, %53
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call i32 @IXGBE_RTRPT4C(i64 %87)
  %89 = load i64, i64* %13, align 8
  %90 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %86, i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %16, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %16, align 8
  br label %49

94:                                               ; preds = %49
  %95 = load i64, i64* @IXGBE_RTRPCS_RRM, align 8
  %96 = load i64, i64* @IXGBE_RTRPCS_RAC, align 8
  %97 = or i64 %95, %96
  store i64 %97, i64* %13, align 8
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %99 = load i32, i32* @IXGBE_RTRPCS, align 4
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %98, i32 %99, i64 %100)
  ret i32 0
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_RTRPT4C(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
