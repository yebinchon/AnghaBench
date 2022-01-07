; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwlagn_lift_passive_no_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwlagn_lift_passive_no_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32 }

@IWLAGN_FIRST_AMPDU_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Wake queue %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Don't wake queue %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwlagn_lift_passive_no_rx(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %4 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %34, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IWLAGN_FIRST_AMPDU_QUEUE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 2
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ieee80211_wake_queue(i32 %26, i32 %27)
  br label %33

29:                                               ; preds = %14
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %8
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @ieee80211_wake_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
