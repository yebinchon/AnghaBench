; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_get_training_power_5g.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_paprd.c_ar9003_get_training_power_5g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i64, %struct.ath9k_channel* }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@AR_PHY_POWERTX_RATE8 = common dso_local global i32 0, align 4
@AR_PHY_POWERTX_RATE8_POWERTXHT40_5 = common dso_local global i32 0, align 4
@AR_PHY_POWERTX_RATE6 = common dso_local global i32 0, align 4
@AR_PHY_POWERTX_RATE6_POWERTXHT20_5 = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid tx-chainmask: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ar9003_get_training_power_5g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_get_training_power_5g(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 2
  %13 = load %struct.ath9k_channel*, %struct.ath9k_channel** %12, align 8
  store %struct.ath9k_channel* %13, %struct.ath9k_channel** %5, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %16 = call i32 @ar9003_get_paprd_scale_factor(%struct.ath_hw* %14, %struct.ath9k_channel* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %18 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = load i32, i32* @AR_PHY_POWERTX_RATE8, align 4
  %23 = load i32, i32* @AR_PHY_POWERTX_RATE8_POWERTXHT40_5, align 4
  %24 = call i32 @REG_READ_FIELD(%struct.ath_hw* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = load i32, i32* @AR_PHY_POWERTX_RATE6, align 4
  %28 = load i32, i32* @AR_PHY_POWERTX_RATE6_POWERTXHT20_5, align 4
  %29 = call i32 @REG_READ_FIELD(%struct.ath_hw* %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @abs(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %65

45:                                               ; preds = %30
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @get_streams(i32 %48)
  switch i32 %49, label %53 [
    i32 1, label %50
    i32 2, label %51
    i32 3, label %52
  ]

50:                                               ; preds = %45
  store i32 6, i32* %8, align 4
  br label %60

51:                                               ; preds = %45
  store i32 4, i32* %8, align 4
  br label %60

52:                                               ; preds = %45
  store i32 2, i32* %8, align 4
  br label %60

53:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  %54 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %55 = load i32, i32* @CALIBRATE, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ath_dbg(%struct.ath_common* %54, i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %53, %52, %51, %50
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %44
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_get_paprd_scale_factor(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @get_streams(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
