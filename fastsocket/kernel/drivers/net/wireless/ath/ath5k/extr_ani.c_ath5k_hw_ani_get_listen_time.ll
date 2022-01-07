; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_hw_ani_get_listen_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_hw_ani_get_listen_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath5k_ani_state = type { i32 }
%struct.ath_common = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_ani_state*)* @ath5k_hw_ani_get_listen_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_ani_get_listen_time(%struct.ath5k_hw* %0, %struct.ath5k_ani_state* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_ani_state*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ath5k_ani_state* %1, %struct.ath5k_ani_state** %4, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %7)
  store %struct.ath_common* %8, %struct.ath_common** %5, align 8
  %9 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %10 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %13 = call i32 @ath_hw_cycle_counters_update(%struct.ath_common* %12)
  %14 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %15 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %14, i32 0, i32 0
  %16 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %17 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %16, i32 0, i32 1
  %18 = call i32 @memcpy(i32* %15, i32* %17, i32 4)
  %19 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %20 = call i32 @ath_hw_get_listen_time(%struct.ath_common* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %22 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath_hw_cycle_counters_update(%struct.ath_common*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ath_hw_get_listen_time(%struct.ath_common*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
