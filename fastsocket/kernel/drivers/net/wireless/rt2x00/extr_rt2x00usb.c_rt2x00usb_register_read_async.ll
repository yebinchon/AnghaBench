; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_register_read_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_register_read_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.usb_device = type { i32 }
%struct.urb = type { i32 }
%struct.rt2x00_async_read_data = type { i32 (%struct.rt2x00_dev*, i32, i32)*, i32, %struct.TYPE_2__, %struct.rt2x00_dev* }
%struct.TYPE_2__ = type { i8*, i8*, i64, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@USB_VENDOR_REQUEST_IN = common dso_local global i32 0, align 4
@USB_MULTI_READ = common dso_local global i32 0, align 4
@rt2x00usb_register_read_async_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00usb_register_read_async(%struct.rt2x00_dev* %0, i32 %1, i32 (%struct.rt2x00_dev*, i32, i32)* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.rt2x00_dev*, i32, i32)*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.rt2x00_async_read_data*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.rt2x00_dev*, i32, i32)* %2, i32 (%struct.rt2x00_dev*, i32, i32)** %6, align 8
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.usb_device* @to_usb_device_intf(i32 %12)
  store %struct.usb_device* %13, %struct.usb_device** %7, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.rt2x00_async_read_data* @kmalloc(i32 56, i32 %14)
  store %struct.rt2x00_async_read_data* %15, %struct.rt2x00_async_read_data** %9, align 8
  %16 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %17 = icmp ne %struct.rt2x00_async_read_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %76

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %20)
  store %struct.urb* %21, %struct.urb** %8, align 8
  %22 = load %struct.urb*, %struct.urb** %8, align 8
  %23 = icmp ne %struct.urb* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %26 = call i32 @kfree(%struct.rt2x00_async_read_data* %25)
  br label %76

27:                                               ; preds = %19
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %29 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %30 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %29, i32 0, i32 3
  store %struct.rt2x00_dev* %28, %struct.rt2x00_dev** %30, align 8
  %31 = load i32 (%struct.rt2x00_dev*, i32, i32)*, i32 (%struct.rt2x00_dev*, i32, i32)** %6, align 8
  %32 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %33 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %32, i32 0, i32 0
  store i32 (%struct.rt2x00_dev*, i32, i32)* %31, i32 (%struct.rt2x00_dev*, i32, i32)** %33, align 8
  %34 = load i32, i32* @USB_VENDOR_REQUEST_IN, align 4
  %35 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %36 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @USB_MULTI_READ, align 4
  %39 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %40 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 8
  %42 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %43 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %48 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = call i8* @cpu_to_le16(i32 4)
  %51 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %52 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.urb*, %struct.urb** %8, align 8
  %55 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %56 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %57 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %56, i32 0)
  %58 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %59 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %58, i32 0, i32 2
  %60 = bitcast %struct.TYPE_2__* %59 to i8*
  %61 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %62 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %61, i32 0, i32 1
  %63 = load i32, i32* @rt2x00usb_register_read_async_cb, align 4
  %64 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %65 = call i32 @usb_fill_control_urb(%struct.urb* %54, %struct.usb_device* %55, i32 %57, i8* %60, i32* %62, i32 4, i32 %63, %struct.rt2x00_async_read_data* %64)
  %66 = load %struct.urb*, %struct.urb** %8, align 8
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call i64 @usb_submit_urb(%struct.urb* %66, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %27
  %71 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %9, align 8
  %72 = call i32 @kfree(%struct.rt2x00_async_read_data* %71)
  br label %73

73:                                               ; preds = %70, %27
  %74 = load %struct.urb*, %struct.urb** %8, align 8
  %75 = call i32 @usb_free_urb(%struct.urb* %74)
  br label %76

76:                                               ; preds = %73, %24, %18
  ret void
}

declare dso_local %struct.usb_device* @to_usb_device_intf(i32) #1

declare dso_local %struct.rt2x00_async_read_data* @kmalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(%struct.rt2x00_async_read_data*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, %struct.usb_device*, i32, i8*, i32*, i32, i32, %struct.rt2x00_async_read_data*) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
