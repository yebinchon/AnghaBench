; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_beacon_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_beacon_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i64, i32, i32, i64, i64 }

@AR5K_INT_BMISS = common dso_local global i32 0, align 4
@AR5K_INT_SWBA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_beacon_config(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %3 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %3, i32 0, i32 2
  %5 = call i32 @spin_lock_bh(i32* %4)
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %6, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @AR5K_INT_BMISS, align 4
  %9 = load i32, i32* @AR5K_INT_SWBA, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %1
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %22 = call i32 @ath5k_beaconq_config(%struct.ath5k_hw* %21)
  %23 = load i32, i32* @AR5K_INT_SWBA, align 4
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %20
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %35 = call i64 @ath5k_hw_hasveol(%struct.ath5k_hw* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %39 = call i32 @ath5k_beacon_send(%struct.ath5k_hw* %38)
  br label %40

40:                                               ; preds = %37, %33
  br label %44

41:                                               ; preds = %20
  %42 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %43 = call i32 @ath5k_beacon_update_timers(%struct.ath5k_hw* %42, i32 -1)
  br label %44

44:                                               ; preds = %41, %40
  br label %51

45:                                               ; preds = %1
  %46 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %47 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ath5k_hw_stop_beacon_queue(%struct.ath5k_hw* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %44
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ath5k_hw_set_imr(%struct.ath5k_hw* %52, i32 %55)
  %57 = call i32 (...) @mmiowb()
  %58 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %59 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock_bh(i32* %59)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath5k_beaconq_config(%struct.ath5k_hw*) #1

declare dso_local i64 @ath5k_hw_hasveol(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_beacon_send(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_beacon_update_timers(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_stop_beacon_queue(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_set_imr(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
