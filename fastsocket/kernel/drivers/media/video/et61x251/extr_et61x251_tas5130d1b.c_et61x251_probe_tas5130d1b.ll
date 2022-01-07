; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_tas5130d1b.c_et61x251_probe_tas5130d1b.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_tas5130d1b.c_et61x251_probe_tas5130d1b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { i32 }
%struct.usb_device_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@tas5130d1b = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et61x251_probe_tas5130d1b(%struct.et61x251_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et61x251_device*, align 8
  %4 = alloca [2 x %struct.usb_device_id], align 4
  store %struct.et61x251_device* %0, %struct.et61x251_device** %3, align 8
  %5 = getelementptr inbounds [2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* %4, i64 0, i64 0
  %6 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %5, i32 0, i32 0
  %7 = call i32 @USB_DEVICE(i32 4140, i32 25169)
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %5, i64 1
  %9 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %11 = getelementptr inbounds [2 x %struct.usb_device_id], [2 x %struct.usb_device_id]* %4, i64 0, i64 0
  %12 = call i32 @et61x251_match_id(%struct.et61x251_device* %10, %struct.usb_device_id* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.et61x251_device*, %struct.et61x251_device** %3, align 8
  %19 = call i32 @et61x251_attach_sensor(%struct.et61x251_device* %18, i32* @tas5130d1b)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @USB_DEVICE(i32, i32) #1

declare dso_local i32 @et61x251_match_id(%struct.et61x251_device*, %struct.usb_device_id*) #1

declare dso_local i32 @et61x251_attach_sensor(%struct.et61x251_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
