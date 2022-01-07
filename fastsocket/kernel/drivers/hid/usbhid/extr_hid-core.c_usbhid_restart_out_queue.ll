; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_restart_out_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_restart_out_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhid_device = type { i64, i64, i32, i32, i32 }
%struct.hid_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Kicking head %d tail %d\00", align 1
@HID_OUT_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhid_device*)* @usbhid_restart_out_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_restart_out_queue(%struct.usbhid_device* %0) #0 {
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
  %11 = icmp ne %struct.hid_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %15 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %18 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  br i1 %20, label %22, label %42

22:                                               ; preds = %13
  %23 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %24 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %27 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %28)
  %30 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %31 = call i64 @hid_submit_out(%struct.hid_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load i32, i32* @HID_OUT_RUNNING, align 4
  %35 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %36 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %35, i32 0, i32 3
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %39 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %38, i32 0, i32 2
  %40 = call i32 @wake_up(i32* %39)
  br label %41

41:                                               ; preds = %33, %22
  br label %42

42:                                               ; preds = %41, %13
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.hid_device* @usb_get_intfdata(i32) #1

declare dso_local i32 @dbg(i8*, i64, i64) #1

declare dso_local i64 @hid_submit_out(%struct.hid_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
