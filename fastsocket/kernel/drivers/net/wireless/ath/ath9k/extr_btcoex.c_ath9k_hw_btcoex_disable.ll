; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_btcoex_hw }
%struct.ath_btcoex_hw = type { i32, i32*, i64, i32 }

@ATH_BTCOEX_STOMP_NONE = common dso_local global i32 0, align 4
@AR9300_NUM_BT_WEIGHTS = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX_AS_OUTPUT = common dso_local global i32 0, align 4
@ATH_BTCOEX_CFG_3WIRE = common dso_local global i64 0, align 8
@AR_BT_COEX_MODE = common dso_local global i32 0, align 4
@AR_BT_QUIET = common dso_local global i32 0, align 4
@AR_BT_MODE = common dso_local global i32 0, align 4
@AR_BT_COEX_MODE2 = common dso_local global i32 0, align 4
@AR_BT_COEX_WL_WEIGHTS0 = common dso_local global i32 0, align 4
@AR_BT_COEX_WL_WEIGHTS1 = common dso_local global i32 0, align 4
@AR_BT_COEX_WEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_btcoex_disable(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_btcoex_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 0
  store %struct.ath_btcoex_hw* %6, %struct.ath_btcoex_hw** %3, align 8
  %7 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = call i64 @AR_SREV_9462(%struct.ath_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = call i64 @AR_SREV_9565(%struct.ath_hw* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %12, %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = load i32, i32* @ATH_BTCOEX_STOMP_NONE, align 4
  %19 = call i32 @ath9k_hw_btcoex_bt_stomp(%struct.ath_hw* %17, i32 %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %36, %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @AR9300_NUM_BT_WEIGHTS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @AR_MCI_COEX_WL_WEIGHTS(i32 %26)
  %28 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @REG_WRITE(%struct.ath_hw* %25, i32 %27, i32 %34)
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %20

39:                                               ; preds = %20
  br label %95

40:                                               ; preds = %12
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ath9k_hw_set_gpio(%struct.ath_hw* %41, i32 %44, i32 0)
  %46 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %47 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AR_GPIO_OUTPUT_MUX_AS_OUTPUT, align 4
  %51 = call i32 @ath9k_hw_cfg_output(%struct.ath_hw* %46, i32 %49, i32 %50)
  %52 = load %struct.ath_btcoex_hw*, %struct.ath_btcoex_hw** %3, align 8
  %53 = getelementptr inbounds %struct.ath_btcoex_hw, %struct.ath_btcoex_hw* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ATH_BTCOEX_CFG_3WIRE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %40
  %58 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %59 = load i32, i32* @AR_BT_COEX_MODE, align 4
  %60 = load i32, i32* @AR_BT_QUIET, align 4
  %61 = load i32, i32* @AR_BT_MODE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @REG_WRITE(%struct.ath_hw* %58, i32 %59, i32 %62)
  %64 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %65 = load i32, i32* @AR_BT_COEX_MODE2, align 4
  %66 = call i32 @REG_WRITE(%struct.ath_hw* %64, i32 %65, i32 0)
  %67 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %68 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %57
  %71 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %72 = load i32, i32* @AR_BT_COEX_WL_WEIGHTS0, align 4
  %73 = call i32 @REG_WRITE(%struct.ath_hw* %71, i32 %72, i32 0)
  %74 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %75 = load i32, i32* @AR_BT_COEX_WL_WEIGHTS1, align 4
  %76 = call i32 @REG_WRITE(%struct.ath_hw* %74, i32 %75, i32 0)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %86, %70
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @AR9300_NUM_BT_WEIGHTS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @AR_BT_COEX_BT_WEIGHTS(i32 %83)
  %85 = call i32 @REG_WRITE(%struct.ath_hw* %82, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %77

89:                                               ; preds = %77
  br label %94

90:                                               ; preds = %57
  %91 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %92 = load i32, i32* @AR_BT_COEX_WEIGHT, align 4
  %93 = call i32 @REG_WRITE(%struct.ath_hw* %91, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %90, %89
  br label %95

95:                                               ; preds = %39, %94, %40
  ret void
}

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_btcoex_bt_stomp(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_MCI_COEX_WL_WEIGHTS(i32) #1

declare dso_local i32 @ath9k_hw_set_gpio(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_cfg_output(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @AR_BT_COEX_BT_WEIGHTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
