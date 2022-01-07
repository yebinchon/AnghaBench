; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_get_tx_atten_grp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965.c_il4965_get_tx_atten_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CALIB_IL_TX_ATTEN_GR5_FCH = common dso_local global i64 0, align 8
@CALIB_IL_TX_ATTEN_GR5_LCH = common dso_local global i64 0, align 8
@CALIB_CH_GROUP_5 = common dso_local global i32 0, align 4
@CALIB_IL_TX_ATTEN_GR1_FCH = common dso_local global i64 0, align 8
@CALIB_IL_TX_ATTEN_GR1_LCH = common dso_local global i64 0, align 8
@CALIB_CH_GROUP_1 = common dso_local global i32 0, align 4
@CALIB_IL_TX_ATTEN_GR2_FCH = common dso_local global i64 0, align 8
@CALIB_IL_TX_ATTEN_GR2_LCH = common dso_local global i64 0, align 8
@CALIB_CH_GROUP_2 = common dso_local global i32 0, align 4
@CALIB_IL_TX_ATTEN_GR3_FCH = common dso_local global i64 0, align 8
@CALIB_IL_TX_ATTEN_GR3_LCH = common dso_local global i64 0, align 8
@CALIB_CH_GROUP_3 = common dso_local global i32 0, align 4
@CALIB_IL_TX_ATTEN_GR4_FCH = common dso_local global i64 0, align 8
@CALIB_IL_TX_ATTEN_GR4_LCH = common dso_local global i64 0, align 8
@CALIB_CH_GROUP_4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @il4965_get_tx_atten_grp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_get_tx_atten_grp(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @CALIB_IL_TX_ATTEN_GR5_FCH, align 8
  %6 = icmp sge i64 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @CALIB_IL_TX_ATTEN_GR5_LCH, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @CALIB_CH_GROUP_5, align 4
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %7, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @CALIB_IL_TX_ATTEN_GR1_FCH, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @CALIB_IL_TX_ATTEN_GR1_LCH, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @CALIB_CH_GROUP_1, align 4
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %17, %13
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @CALIB_IL_TX_ATTEN_GR2_FCH, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @CALIB_IL_TX_ATTEN_GR2_LCH, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @CALIB_CH_GROUP_2, align 4
  store i32 %32, i32* %2, align 4
  br label %56

33:                                               ; preds = %27, %23
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @CALIB_IL_TX_ATTEN_GR3_FCH, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @CALIB_IL_TX_ATTEN_GR3_LCH, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @CALIB_CH_GROUP_3, align 4
  store i32 %42, i32* %2, align 4
  br label %56

43:                                               ; preds = %37, %33
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @CALIB_IL_TX_ATTEN_GR4_FCH, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @CALIB_IL_TX_ATTEN_GR4_LCH, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @CALIB_CH_GROUP_4, align 4
  store i32 %52, i32* %2, align 4
  br label %56

53:                                               ; preds = %47, %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %51, %41, %31, %21, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
