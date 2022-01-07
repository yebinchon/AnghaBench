; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_restart_ctrl_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_restart_ctrl_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhid_device = type { i64, i64, i32, i32, i32 }
%struct.hid_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Kicking head %d tail %d\00", align 1
@HID_CTRL_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhid_device*)* @usbhid_restart_ctrl_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_restart_ctrl_queue(%struct.usbhid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbhid_device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  store %struct.usbhid_device* %0, %struct.usbhid_device** %3, align 8
  %6 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %7 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.hid_device* @usb_get_intfdata(i32 %8)
  store %struct.hid_device* %9, %struct.hid_device** %4, align 8
  %10 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %11 = icmp eq %struct.hid_device* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %15 = icmp ne %struct.hid_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %19 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %22 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  br i1 %24, label %26, label %46

26:                                               ; preds = %17
  %27 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %28 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %31 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32)
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = call i64 @hid_submit_ctrl(%struct.hid_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load i32, i32* @HID_CTRL_RUNNING, align 4
  %39 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %40 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %39, i32 0, i32 3
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %43 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %42, i32 0, i32 2
  %44 = call i32 @wake_up(i32* %43)
  br label %45

45:                                               ; preds = %37, %26
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.hid_device* @usb_get_intfdata(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dbg(i8*, i64, i64) #1

declare dso_local i64 @hid_submit_ctrl(%struct.hid_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
