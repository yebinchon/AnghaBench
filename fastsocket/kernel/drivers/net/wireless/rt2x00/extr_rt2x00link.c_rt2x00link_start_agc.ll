; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00link.c_rt2x00link_start_agc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00link.c_rt2x00link_start_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_4__*, i32, %struct.link }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.link = type { i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@AGC_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00link_start_agc(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.link*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 3
  store %struct.link* %5, %struct.link** %3, align 8
  %6 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %11
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.link*, %struct.link** %3, align 8
  %25 = getelementptr inbounds %struct.link, %struct.link* %24, i32 0, i32 0
  %26 = load i32, i32* @AGC_INTERVAL, align 4
  %27 = call i32 @ieee80211_queue_delayed_work(i32 %23, i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %11, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
