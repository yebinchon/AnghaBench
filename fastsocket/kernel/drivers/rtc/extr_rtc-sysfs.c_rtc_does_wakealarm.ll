; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sysfs.c_rtc_does_wakealarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sysfs.c_rtc_does_wakealarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_device*)* @rtc_does_wakealarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_does_wakealarm(%struct.rtc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_device*, align 8
  store %struct.rtc_device* %0, %struct.rtc_device** %3, align 8
  %4 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %5 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @device_can_wakeup(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.rtc_device*, %struct.rtc_device** %3, align 8
  %13 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @device_can_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
