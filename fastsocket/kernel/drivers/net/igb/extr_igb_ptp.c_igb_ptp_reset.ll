; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ptp.c_igb_ptp_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ptp.c_igb_ptp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i32 }

@IGB_FLAG_PTP = common dso_local global i32 0, align 4
@E1000_TIMINCA = common dso_local global i32 0, align 4
@INCPERIOD_82576 = common dso_local global i32 0, align 4
@INCVALUE_82576 = common dso_local global i32 0, align 4
@E1000_TSAUXC = common dso_local global i32 0, align 4
@E1000_TSIM = common dso_local global i32 0, align 4
@E1000_TSIM_TXTS = common dso_local global i32 0, align 4
@E1000_IMS = common dso_local global i32 0, align 4
@E1000_IMS_TS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_reset(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.timespec, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 4
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IGB_FLAG_PTP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %35 [
    i32 133, label %20
    i32 132, label %26
    i32 128, label %26
    i32 129, label %26
    i32 131, label %26
    i32 130, label %26
  ]

20:                                               ; preds = %14
  %21 = load i32, i32* @E1000_TIMINCA, align 4
  %22 = load i32, i32* @INCPERIOD_82576, align 4
  %23 = load i32, i32* @INCVALUE_82576, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @wr32(i32 %21, i32 %24)
  br label %36

26:                                               ; preds = %14, %14, %14, %14, %14
  %27 = load i32, i32* @E1000_TSAUXC, align 4
  %28 = call i32 @wr32(i32 %27, i32 0)
  %29 = load i32, i32* @E1000_TSIM, align 4
  %30 = load i32, i32* @E1000_TSIM_TXTS, align 4
  %31 = call i32 @wr32(i32 %29, i32 %30)
  %32 = load i32, i32* @E1000_IMS, align 4
  %33 = load i32, i32* @E1000_IMS_TS, align 4
  %34 = call i32 @wr32(i32 %32, i32 %33)
  br label %36

35:                                               ; preds = %14
  br label %63

36:                                               ; preds = %26, %20
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 131
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 130
  br i1 %47, label %48, label %55

48:                                               ; preds = %42, %36
  %49 = call i32 (...) @ktime_get_real()
  %50 = call i32 @ktime_to_timespec(i32 %49)
  %51 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %52, i32 0, i32 3
  %54 = call i32 @igb_ptp_settime_i210(i32* %53, %struct.timespec* %4)
  br label %63

55:                                               ; preds = %42
  %56 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %56, i32 0, i32 2
  %58 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %58, i32 0, i32 1
  %60 = call i32 (...) @ktime_get_real()
  %61 = call i32 @ktime_to_ns(i32 %60)
  %62 = call i32 @timecounter_init(i32* %57, i32* %59, i32 %61)
  br label %63

63:                                               ; preds = %13, %35, %55, %48
  ret void
}

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @ktime_to_timespec(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @igb_ptp_settime_i210(i32*, %struct.timespec*) #1

declare dso_local i32 @timecounter_init(i32*, i32*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
