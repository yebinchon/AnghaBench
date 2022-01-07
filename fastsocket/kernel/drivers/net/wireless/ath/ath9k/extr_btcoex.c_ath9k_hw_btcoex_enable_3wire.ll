; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_enable_3wire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_enable_3wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_btcoex_hw }
%struct.ath_btcoex_hw = type { i32, i32, i32*, i32*, i32, i32 }

@AR_BT_COEX_MODE = common dso_local global i32 0, align 4
@AR_BT_COEX_MODE2 = common dso_local global i32 0, align 4
@AR_BT_COEX_WL_WEIGHTS0 = common dso_local global i32 0, align 4
@AR_BT_COEX_WL_WEIGHTS1 = common dso_local global i32 0, align 4
@AR9300_NUM_BT_WEIGHTS = common dso_local global i32 0, align 4
@AR_BT_COEX_WEIGHT = common dso_local global i32 0, align 4
@AR_QUIET1 = common dso_local global i32 0, align 4
@AR_QUIET1_QUIET_ACK_CTS_ENABLE = common dso_local global i32 0, align 4
@AR_PCU_MISC = common dso_local global i32 0, align 4
@AR_PCU_BT_ANT_PREVENT_RX = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_RX_CLEAR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_btcoex_enable_3wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_btcoex_enable_3wire(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_btcoex_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  store %struct.ath_btcoex_hw* %7, %struct.ath_btcoex_hw** %3, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = load i32, i32* @AR_BT_COEX_MODE, align 4
  %10 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @REG_WRITE(%struct.ath_hw* %8, i32 %9, i32 %12)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = load i32, i32* @AR_BT_COEX_MODE2, align 4
  %16 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @REG_WRITE(%struct.ath_hw* %14, i32 %15, i32 %18)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %1
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = load i32, i32* @AR_BT_COEX_WL_WEIGHTS0, align 4
  %26 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @REG_WRITE(%struct.ath_hw* %24, i32 %25, i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = load i32, i32* @AR_BT_COEX_WL_WEIGHTS1, align 4
  %34 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @REG_WRITE(%struct.ath_hw* %32, i32 %33, i32 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %56, %23
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @AR9300_NUM_BT_WEIGHTS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @AR_BT_COEX_BT_WEIGHTS(i32 %46)
  %48 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @REG_WRITE(%struct.ath_hw* %45, i32 %47, i32 %54)
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %40

59:                                               ; preds = %40
  br label %67

60:                                               ; preds = %1
  %61 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %62 = load i32, i32* @AR_BT_COEX_WEIGHT, align 4
  %63 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @REG_WRITE(%struct.ath_hw* %61, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %60, %59
  %68 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %69 = call i64 @AR_SREV_9271(%struct.ath_hw* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %73 = call i32 @REG_READ(%struct.ath_hw* %72, i32 327744)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, -257
  store i32 %75, i32* %4, align 4
  %76 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @REG_WRITE(%struct.ath_hw* %76, i32 327744, i32 %77)
  br label %79

79:                                               ; preds = %71, %67
  %80 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %81 = load i32, i32* @AR_QUIET1, align 4
  %82 = load i32, i32* @AR_QUIET1_QUIET_ACK_CTS_ENABLE, align 4
  %83 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %80, i32 %81, i32 %82, i32 1)
  %84 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %85 = load i32, i32* @AR_PCU_MISC, align 4
  %86 = load i32, i32* @AR_PCU_BT_ANT_PREVENT_RX, align 4
  %87 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %84, i32 %85, i32 %86, i32 0)
  %88 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %89 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %90 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_RX_CLEAR_EXTERNAL, align 4
  %93 = call i32 @ath9k_hw_cfg_output(%struct.ath_hw* %88, i32 %91, i32 %92)
  ret void
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @AR_BT_COEX_BT_WEIGHTS(i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_cfg_output(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
