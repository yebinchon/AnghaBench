; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_geo.c_libipw_get_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_geo.c_libipw_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_channel = type { i32 }
%struct.libipw_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.libipw_channel*, %struct.libipw_channel* }

@bad_channel = common dso_local global %struct.libipw_channel zeroinitializer, align 4
@LIBIPW_24GHZ_CHANNELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libipw_channel* @libipw_get_channel(%struct.libipw_device* %0, i64 %1) #0 {
  %3 = alloca %struct.libipw_channel*, align 8
  %4 = alloca %struct.libipw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.libipw_device* %0, %struct.libipw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @libipw_channel_to_index(%struct.libipw_device* %7, i64 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.libipw_channel* @bad_channel, %struct.libipw_channel** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @LIBIPW_24GHZ_CHANNELS, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %19 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.libipw_channel*, %struct.libipw_channel** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.libipw_channel, %struct.libipw_channel* %21, i64 %23
  store %struct.libipw_channel* %24, %struct.libipw_channel** %3, align 8
  br label %33

25:                                               ; preds = %13
  %26 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %27 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.libipw_channel*, %struct.libipw_channel** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.libipw_channel, %struct.libipw_channel* %29, i64 %31
  store %struct.libipw_channel* %32, %struct.libipw_channel** %3, align 8
  br label %33

33:                                               ; preds = %25, %17, %12
  %34 = load %struct.libipw_channel*, %struct.libipw_channel** %3, align 8
  ret %struct.libipw_channel* %34
}

declare dso_local i32 @libipw_channel_to_index(%struct.libipw_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
