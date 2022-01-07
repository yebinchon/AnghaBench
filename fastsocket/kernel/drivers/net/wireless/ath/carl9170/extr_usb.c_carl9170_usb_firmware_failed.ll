; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_firmware_failed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_firmware_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, %struct.usb_device* }
%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*)* @carl9170_usb_firmware_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_usb_firmware_failed(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %5 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %6 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %5, i32 0, i32 1
  %7 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %12 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %11, i32 0, i32 1
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %4, align 8
  %14 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %15 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %14, i32 0, i32 0
  %16 = call i32 @complete(i32* %15)
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = icmp ne %struct.device* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @device_lock(%struct.device* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 0
  %25 = call i32 @device_release_driver(%struct.TYPE_2__* %24)
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = icmp ne %struct.device* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @device_unlock(%struct.device* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = call i32 @usb_put_dev(%struct.usb_device* %32)
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @device_release_driver(%struct.TYPE_2__*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
