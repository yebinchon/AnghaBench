; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_chan_2_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_chan_2_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan_freq_power = type { i64, i32 }

@channel_freq_power_UN_BG = common dso_local global %struct.chan_freq_power* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_chan_2_freq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.chan_freq_power*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.chan_freq_power*, %struct.chan_freq_power** @channel_freq_power_UN_BG, align 8
  store %struct.chan_freq_power* %6, %struct.chan_freq_power** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.chan_freq_power*, %struct.chan_freq_power** @channel_freq_power_UN_BG, align 8
  %10 = call i64 @ARRAY_SIZE(%struct.chan_freq_power* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load i64, i64* %2, align 8
  %14 = load %struct.chan_freq_power*, %struct.chan_freq_power** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %14, i64 %15
  %17 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %13, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load %struct.chan_freq_power*, %struct.chan_freq_power** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %21, i64 %22
  %24 = getelementptr inbounds %struct.chan_freq_power, %struct.chan_freq_power* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %12
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %7

30:                                               ; preds = %7
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @ARRAY_SIZE(%struct.chan_freq_power*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
