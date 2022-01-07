; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_init_scheme.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_init_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_btcoex_hw }
%struct.ath_btcoex_hw = type { i8*, i32, i32, i32 }
%struct.ath_common = type { i32 }

@ATH_BTCOEX_CFG_NONE = common dso_local global i8* null, align 8
@ATH_BTCOEX_CFG_3WIRE = common dso_local global i8* null, align 8
@ATH_BTACTIVE_GPIO_9300 = common dso_local global i32 0, align 4
@ATH_WLANACTIVE_GPIO_9300 = common dso_local global i32 0, align 4
@ATH_BTPRIORITY_GPIO_9300 = common dso_local global i32 0, align 4
@ATH_BTACTIVE_GPIO_9280 = common dso_local global i32 0, align 4
@ATH_WLANACTIVE_GPIO_9280 = common dso_local global i32 0, align 4
@ATH_BTPRIORITY_GPIO_9285 = common dso_local global i32 0, align 4
@ATH_BTCOEX_CFG_2WIRE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_btcoex_init_scheme(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath_btcoex_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  store %struct.ath_btcoex_hw* %8, %struct.ath_btcoex_hw** %4, align 8
  %9 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %10 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** @ATH_BTCOEX_CFG_NONE, align 8
  %15 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  br label %61

17:                                               ; preds = %1
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i8*, i8** @ATH_BTCOEX_CFG_3WIRE, align 8
  %23 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @ATH_BTACTIVE_GPIO_9300, align 4
  %26 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @ATH_WLANACTIVE_GPIO_9300, align 4
  %29 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @ATH_BTPRIORITY_GPIO_9300, align 4
  %32 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %61

34:                                               ; preds = %17
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32, i32* @ATH_BTACTIVE_GPIO_9280, align 4
  %40 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @ATH_WLANACTIVE_GPIO_9280, align 4
  %43 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %44 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %46 = call i64 @AR_SREV_9285(%struct.ath_hw* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load i8*, i8** @ATH_BTCOEX_CFG_3WIRE, align 8
  %50 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %51 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @ATH_BTPRIORITY_GPIO_9285, align 4
  %53 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %54 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %59

55:                                               ; preds = %38
  %56 = load i8*, i8** @ATH_BTCOEX_CFG_2WIRE, align 8
  %57 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %4, align 8
  %58 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %55, %48
  br label %60

60:                                               ; preds = %59, %34
  br label %61

61:                                               ; preds = %13, %60, %21
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
