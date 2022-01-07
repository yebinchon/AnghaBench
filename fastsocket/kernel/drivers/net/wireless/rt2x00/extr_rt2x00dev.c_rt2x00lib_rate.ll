; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rate = type { i32, i32, i32, i32 }
%struct.rt2x00_rate = type { i32, i32 }

@DEV_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rate*, i32, %struct.rt2x00_rate*)* @rt2x00lib_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00lib_rate(%struct.ieee80211_rate* %0, i32 %1, %struct.rt2x00_rate* %2) #0 {
  %4 = alloca %struct.ieee80211_rate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2x00_rate*, align 8
  store %struct.ieee80211_rate* %0, %struct.ieee80211_rate** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rt2x00_rate* %2, %struct.rt2x00_rate** %6, align 8
  %7 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %6, align 8
  %10 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %6, align 8
  %21 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DEV_RATE_SHORT_PREAMBLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  %28 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
