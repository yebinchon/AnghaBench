; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c___scc_start_tx_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_scc.c___scc_start_tx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, void (i64)*, i64 }

@TIMER_OFF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_channel*, void (i64)*, i64)* @__scc_start_tx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__scc_start_tx_timer(%struct.scc_channel* %0, void (i64)* %1, i64 %2) #0 {
  %4 = alloca %struct.scc_channel*, align 8
  %5 = alloca void (i64)*, align 8
  %6 = alloca i64, align 8
  store %struct.scc_channel* %0, %struct.scc_channel** %4, align 8
  store void (i64)* %1, void (i64)** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %8 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %7, i32 0, i32 0
  %9 = call i32 @del_timer(%struct.TYPE_3__* %8)
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load void (i64)*, void (i64)** %5, align 8
  %14 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %15 = ptrtoint %struct.scc_channel* %14 to i64
  call void %13(i64 %15)
  br label %43

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @TIMER_OFF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %22 = ptrtoint %struct.scc_channel* %21 to i64
  %23 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %24 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load void (i64)*, void (i64)** %5, align 8
  %27 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %28 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store void (i64)* %26, void (i64)** %29, align 8
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @HZ, align 8
  %33 = mul i64 %31, %32
  %34 = udiv i64 %33, 100
  %35 = add i64 %30, %34
  %36 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %37 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i64 %35, i64* %38, align 8
  %39 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %40 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %39, i32 0, i32 0
  %41 = call i32 @add_timer(%struct.TYPE_3__* %40)
  br label %42

42:                                               ; preds = %20, %16
  br label %43

43:                                               ; preds = %42, %12
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
