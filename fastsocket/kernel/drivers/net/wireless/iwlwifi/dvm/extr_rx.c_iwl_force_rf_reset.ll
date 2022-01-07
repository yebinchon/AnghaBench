; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwl_force_rf_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rx.c_iwl_force_rf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.iwl_rf_reset, i32 }
%struct.iwl_rf_reset = type { i64, i32, i32, i32 }

@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"force reset rejected: not associated\0A\00", align 1
@ENOLINK = common dso_local global i32 0, align 4
@IWL_DELAY_NEXT_FORCE_RF_RESET = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"RF reset rejected\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"perform radio reset.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_force_rf_reset(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_rf_reset*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 1
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %17 = call i32 @iwl_is_any_associated(%struct.iwl_priv* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %21 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_priv* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOLINK, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %15
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 0
  store %struct.iwl_rf_reset* %26, %struct.iwl_rf_reset** %6, align 8
  %27 = load %struct.iwl_rf_reset*, %struct.iwl_rf_reset** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_rf_reset, %struct.iwl_rf_reset* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %24
  %34 = load %struct.iwl_rf_reset*, %struct.iwl_rf_reset** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_rf_reset, %struct.iwl_rf_reset* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load %struct.iwl_rf_reset*, %struct.iwl_rf_reset** %6, align 8
  %40 = getelementptr inbounds %struct.iwl_rf_reset, %struct.iwl_rf_reset* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IWL_DELAY_NEXT_FORCE_RF_RESET, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* @jiffies, align 8
  %45 = call i64 @time_after(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %49 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.iwl_rf_reset*, %struct.iwl_rf_reset** %6, align 8
  %51 = getelementptr inbounds %struct.iwl_rf_reset, %struct.iwl_rf_reset* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %68

56:                                               ; preds = %38, %33, %24
  %57 = load %struct.iwl_rf_reset*, %struct.iwl_rf_reset** %6, align 8
  %58 = getelementptr inbounds %struct.iwl_rf_reset, %struct.iwl_rf_reset* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.iwl_rf_reset*, %struct.iwl_rf_reset** %6, align 8
  %63 = getelementptr inbounds %struct.iwl_rf_reset, %struct.iwl_rf_reset* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %65 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %67 = call i32 @iwl_internal_short_hw_scan(%struct.iwl_priv* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %56, %47, %19, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_is_any_associated(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_internal_short_hw_scan(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
