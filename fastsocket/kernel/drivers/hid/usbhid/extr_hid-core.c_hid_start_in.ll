; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_start_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_start_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32, i32 }

@HID_DISCONNECTED = common dso_local global i32 0, align 4
@HID_REPORTED_IDLE = common dso_local global i32 0, align 4
@HID_IN_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @hid_start_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_start_in(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 1
  %8 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  store %struct.usbhid_device* %8, %struct.usbhid_device** %5, align 8
  %9 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %10 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %9, i32 0, i32 0
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %1
  %18 = load i32, i32* @HID_DISCONNECTED, align 4
  %19 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %20 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @HID_REPORTED_IDLE, align 4
  %25 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %26 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %25, i32 0, i32 1
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @HID_IN_RUNNING, align 4
  %31 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %32 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %31, i32 0, i32 1
  %33 = call i32 @test_and_set_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %29
  %36 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %37 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call i32 @usb_submit_urb(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i32, i32* @HID_IN_RUNNING, align 4
  %45 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %46 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %45, i32 0, i32 1
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %35
  br label %49

49:                                               ; preds = %48, %29, %23, %17, %1
  %50 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %51 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %50, i32 0, i32 0
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
