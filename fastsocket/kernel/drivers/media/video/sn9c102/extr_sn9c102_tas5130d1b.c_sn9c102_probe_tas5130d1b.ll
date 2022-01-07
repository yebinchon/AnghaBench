; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_tas5130d1b.c_sn9c102_probe_tas5130d1b.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_tas5130d1b.c_sn9c102_probe_tas5130d1b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.usb_device_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@tas5130d1b = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sn9c102_probe_tas5130d1b(%struct.sn9c102_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sn9c102_device*, align 8
  %4 = alloca [4 x %struct.usb_device_id], align 16
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %3, align 8
  %5 = getelementptr inbounds [4 x %struct.usb_device_id], [4 x %struct.usb_device_id]* %4, i64 0, i64 0
  %6 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %5, i32 0, i32 0
  %7 = call i32 @USB_DEVICE(i32 3141, i32 24612)
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %5, i64 1
  %9 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %8, i32 0, i32 0
  %10 = call i32 @USB_DEVICE(i32 3141, i32 24613)
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %8, i64 1
  %12 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %11, i32 0, i32 0
  %13 = call i32 @USB_DEVICE(i32 3141, i32 24746)
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %11, i64 1
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %17 = getelementptr inbounds [4 x %struct.usb_device_id], [4 x %struct.usb_device_id]* %4, i64 0, i64 0
  %18 = call i32 @sn9c102_match_id(%struct.sn9c102_device* %16, %struct.usb_device_id* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %25 = call i32 @sn9c102_attach_sensor(%struct.sn9c102_device* %24, i32* @tas5130d1b)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @USB_DEVICE(i32, i32) #1

declare dso_local i32 @sn9c102_match_id(%struct.sn9c102_device*, %struct.usb_device_id*) #1

declare dso_local i32 @sn9c102_attach_sensor(%struct.sn9c102_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
