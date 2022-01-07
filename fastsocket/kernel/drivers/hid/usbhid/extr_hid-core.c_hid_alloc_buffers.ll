; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.hid_device*)* @hid_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_alloc_buffers(%struct.usb_device* %0, %struct.hid_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.usbhid_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.hid_device* %1, %struct.hid_device** %5, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  store %struct.usbhid_device* %9, %struct.usbhid_device** %6, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %11 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %12 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %16 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %15, i32 0, i32 8
  %17 = call i8* @usb_buffer_alloc(%struct.usb_device* %10, i32 %13, i32 %14, i32* %16)
  %18 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %19 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %22 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %26 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %25, i32 0, i32 7
  %27 = call i8* @usb_buffer_alloc(%struct.usb_device* %20, i32 %23, i32 %24, i32* %26)
  %28 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %29 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %33 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %32, i32 0, i32 6
  %34 = call i8* @usb_buffer_alloc(%struct.usb_device* %30, i32 1, i32 %31, i32* %33)
  %35 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %36 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %38 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %39 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %43 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %42, i32 0, i32 5
  %44 = call i8* @usb_buffer_alloc(%struct.usb_device* %37, i32 %40, i32 %41, i32* %43)
  %45 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %46 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %48 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %2
  %52 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %53 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %58 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %63 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61, %56, %51, %2
  store i32 -1, i32* %3, align 4
  br label %68

67:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i8* @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
