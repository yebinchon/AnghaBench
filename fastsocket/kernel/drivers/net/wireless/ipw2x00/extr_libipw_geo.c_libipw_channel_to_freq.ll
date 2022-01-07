; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_geo.c_libipw_channel_to_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_geo.c_libipw_channel_to_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.libipw_channel = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libipw_channel_to_freq(%struct.libipw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libipw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_channel*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %8 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %14 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %32

19:                                               ; preds = %12, %2
  %20 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.libipw_channel* @libipw_get_channel(%struct.libipw_device* %20, i32 %21)
  store %struct.libipw_channel* %22, %struct.libipw_channel** %6, align 8
  %23 = load %struct.libipw_channel*, %struct.libipw_channel** %6, align 8
  %24 = getelementptr inbounds %struct.libipw_channel, %struct.libipw_channel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.libipw_channel*, %struct.libipw_channel** %6, align 8
  %30 = getelementptr inbounds %struct.libipw_channel, %struct.libipw_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %27, %18
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.libipw_channel* @libipw_get_channel(%struct.libipw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
