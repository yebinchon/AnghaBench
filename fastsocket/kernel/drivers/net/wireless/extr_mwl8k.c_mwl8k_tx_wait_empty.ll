; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_tx_wait_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_tx_wait_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i64, i32, i32, i32*, i32, i32 }

@tx_wait = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@MWL8K_TX_WAIT_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tx rings drained\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"waiting for tx rings to drain (%d -> %d pkts)\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"tx rings stuck for %d ms\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mwl8k_tx_wait_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_tx_wait_empty(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mwl8k_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  store %struct.mwl8k_priv* %11, %struct.mwl8k_priv** %4, align 8
  %12 = load i32, i32* @tx_wait, align 4
  %13 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %12)
  %14 = call i32 (...) @might_sleep()
  %15 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @current, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %133

26:                                               ; preds = %19
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %133

29:                                               ; preds = %1
  %30 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %30, i32 0, i32 6
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %133

35:                                               ; preds = %29
  %36 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %133

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %42 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %43 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %42, i32 0, i32 3
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %46 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %45, i32 0, i32 4
  store i32* @tx_wait, i32** %46, align 8
  br label %47

47:                                               ; preds = %108, %99, %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %51, label %126

51:                                               ; preds = %47
  %52 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  %55 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %56 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %55, i32 0, i32 3
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load i32, i32* @MWL8K_TX_WAIT_TIMEOUT_MS, align 4
  %59 = call i32 @msecs_to_jiffies(i32 %58)
  %60 = call i64 @wait_for_completion_timeout(i32* @tx_wait, i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %62 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %61, i32 0, i32 6
  %63 = call i64 @atomic_read(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %51
  %66 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %67 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %66, i32 0, i32 3
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %70 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  %71 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %72 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %71, i32 0, i32 3
  %73 = call i32 @spin_unlock_bh(i32* %72)
  store i32 0, i32* %2, align 4
  br label %133

74:                                               ; preds = %51
  %75 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %76 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %75, i32 0, i32 3
  %77 = call i32 @spin_lock_bh(i32* %76)
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %82 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @WARN_ON(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, ...) @wiphy_notice(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %80
  br label %126

93:                                               ; preds = %74
  %94 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %95 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %101 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %105 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @wiphy_notice(i32 %102, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106)
  store i32 1, i32* %5, align 4
  br label %47

108:                                              ; preds = %93
  %109 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %110 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %109, i32 0, i32 4
  store i32* null, i32** %110, align 8
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %112 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MWL8K_TX_WAIT_TIMEOUT_MS, align 4
  %115 = call i32 @wiphy_err(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %117 = call i32 @mwl8k_dump_tx_rings(%struct.ieee80211_hw* %116)
  %118 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %119 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %121 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %122 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %121, i32 0, i32 5
  %123 = call i32 @ieee80211_queue_work(%struct.ieee80211_hw* %120, i32* %122)
  %124 = load i32, i32* @ETIMEDOUT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  br label %47

126:                                              ; preds = %92, %47
  %127 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %128 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %127, i32 0, i32 4
  store i32* null, i32** %128, align 8
  %129 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %130 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %129, i32 0, i32 3
  %131 = call i32 @spin_unlock_bh(i32* %130)
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %126, %65, %40, %34, %26, %25
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wiphy_notice(i32, i8*, ...) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @mwl8k_dump_tx_rings(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_queue_work(%struct.ieee80211_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
