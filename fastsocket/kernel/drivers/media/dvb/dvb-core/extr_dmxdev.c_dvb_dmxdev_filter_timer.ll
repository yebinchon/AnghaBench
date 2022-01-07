; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_filter_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_filter_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmxdev_filter = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.dmx_sct_filter_params }
%struct.dmx_sct_filter_params = type { i32 }

@dvb_dmxdev_filter_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmxdev_filter*)* @dvb_dmxdev_filter_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_dmxdev_filter_timer(%struct.dmxdev_filter* %0) #0 {
  %2 = alloca %struct.dmxdev_filter*, align 8
  %3 = alloca %struct.dmx_sct_filter_params*, align 8
  store %struct.dmxdev_filter* %0, %struct.dmxdev_filter** %2, align 8
  %4 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %5 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.dmx_sct_filter_params* %6, %struct.dmx_sct_filter_params** %3, align 8
  %7 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %8 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %7, i32 0, i32 0
  %9 = call i32 @del_timer(%struct.TYPE_5__* %8)
  %10 = load %struct.dmx_sct_filter_params*, %struct.dmx_sct_filter_params** %3, align 8
  %11 = getelementptr inbounds %struct.dmx_sct_filter_params, %struct.dmx_sct_filter_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load i32, i32* @dvb_dmxdev_filter_timeout, align 4
  %16 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %17 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %20 = ptrtoint %struct.dmxdev_filter* %19 to i64
  %21 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %22 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load i64, i64* @jiffies, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %26, 2
  %28 = load i32, i32* @HZ, align 4
  %29 = load %struct.dmx_sct_filter_params*, %struct.dmx_sct_filter_params** %3, align 8
  %30 = getelementptr inbounds %struct.dmx_sct_filter_params, %struct.dmx_sct_filter_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = add nsw i32 %27, %32
  %34 = sdiv i32 %33, 1000
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %25, %35
  %37 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %38 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  %40 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %2, align 8
  %41 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %40, i32 0, i32 0
  %42 = call i32 @add_timer(%struct.TYPE_5__* %41)
  br label %43

43:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
