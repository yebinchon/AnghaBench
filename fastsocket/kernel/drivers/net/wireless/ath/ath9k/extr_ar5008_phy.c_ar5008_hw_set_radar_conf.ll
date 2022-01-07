; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_radar_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_radar_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_hw_radar_conf }
%struct.ath_hw_radar_conf = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar5008_hw_set_radar_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_set_radar_conf(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_hw_radar_conf*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  store %struct.ath_hw_radar_conf* %5, %struct.ath_hw_radar_conf** %3, align 8
  %6 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %3, align 8
  %7 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %6, i32 0, i32 0
  store i32 -33, i32* %7, align 4
  %8 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %3, align 8
  %9 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %8, i32 0, i32 1
  store i32 20, i32* %9, align 4
  %10 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %10, i32 0, i32 2
  store i32 10, i32* %11, align 4
  %12 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %12, i32 0, i32 3
  store i32 24, i32* %13, align 4
  %14 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %3, align 8
  %15 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %14, i32 0, i32 4
  store i32 15, i32* %15, align 4
  %16 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %16, i32 0, i32 5
  store i32 255, i32* %17, align 4
  %18 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %3, align 8
  %19 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %18, i32 0, i32 6
  store i32 12, i32* %19, align 4
  %20 = load %struct.ath_hw_radar_conf*, %struct.ath_hw_radar_conf** %3, align 8
  %21 = getelementptr inbounds %struct.ath_hw_radar_conf, %struct.ath_hw_radar_conf* %20, i32 0, i32 7
  store i32 8, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
