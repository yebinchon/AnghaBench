; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_bt_stomp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_btcoex.c_ath9k_hw_btcoex_bt_stomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_BT_COEX_WGHT = common dso_local global i32 0, align 4
@AR_STOMP_ALL_WLAN_WGHT = common dso_local global i32 0, align 4
@AR_STOMP_LOW_WLAN_WGHT = common dso_local global i32 0, align 4
@AR_STOMP_NONE_WLAN_WGHT = common dso_local global i32 0, align 4
@BTCOEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid Stomptype\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_btcoex_bt_stomp(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ath9k_hw_btcoex_set_weight(%struct.ath_hw* %9, i32 0, i32 0, i32 %10)
  br label %34

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %29 [
    i32 130, label %14
    i32 129, label %19
    i32 128, label %24
  ]

14:                                               ; preds = %12
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = load i32, i32* @AR_BT_COEX_WGHT, align 4
  %17 = load i32, i32* @AR_STOMP_ALL_WLAN_WGHT, align 4
  %18 = call i32 @ath9k_hw_btcoex_set_weight(%struct.ath_hw* %15, i32 %16, i32 %17, i32 0)
  br label %34

19:                                               ; preds = %12
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = load i32, i32* @AR_BT_COEX_WGHT, align 4
  %22 = load i32, i32* @AR_STOMP_LOW_WLAN_WGHT, align 4
  %23 = call i32 @ath9k_hw_btcoex_set_weight(%struct.ath_hw* %20, i32 %21, i32 %22, i32 0)
  br label %34

24:                                               ; preds = %12
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load i32, i32* @AR_BT_COEX_WGHT, align 4
  %27 = load i32, i32* @AR_STOMP_NONE_WLAN_WGHT, align 4
  %28 = call i32 @ath9k_hw_btcoex_set_weight(%struct.ath_hw* %25, i32 %26, i32 %27, i32 0)
  br label %34

29:                                               ; preds = %12
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = call i32 @ath9k_hw_common(%struct.ath_hw* %30)
  %32 = load i32, i32* @BTCOEX, align 4
  %33 = call i32 @ath_dbg(i32 %31, i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %8, %29, %24, %19, %14
  ret void
}

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_btcoex_set_weight(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
