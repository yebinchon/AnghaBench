; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_submit_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_submit_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i8*, %struct.hid_report* }
%struct.hid_report = type { i32, i64 }

@HID_REPORTED_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"submitting out urb\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"usb_submit_urb(out) failed\00", align 1
@jiffies = common dso_local global i32 0, align 4
@resumption_waker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @hid_submit_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_submit_out(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  store %struct.usbhid_device* %9, %struct.usbhid_device** %6, align 8
  %10 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %11 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %14 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.hid_report*, %struct.hid_report** %17, align 8
  store %struct.hid_report* %18, %struct.hid_report** %4, align 8
  %19 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %20 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %23 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load i32, i32* @HID_REPORTED_IDLE, align 4
  %29 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %30 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %29, i32 0, i32 6
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %93, label %33

33:                                               ; preds = %1
  %34 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %35 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = ashr i32 %37, 3
  %39 = add nsw i32 %38, 1
  %40 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %41 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = add nsw i32 %39, %44
  %46 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %47 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %51 = call i32 @hid_to_usb_dev(%struct.hid_device* %50)
  %52 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %53 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %33
  %59 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %60 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %64 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32 %61, i8* %62, i32 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @kfree(i8* %69)
  %71 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %72 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %75 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i8* null, i8** %78, align 8
  br label %79

79:                                               ; preds = %58, %33
  %80 = call i32 @dbg_hid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %82 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* @GFP_ATOMIC, align 4
  %85 = call i64 @usb_submit_urb(%struct.TYPE_4__* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = call i32 @err_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %99

89:                                               ; preds = %79
  %90 = load i32, i32* @jiffies, align 4
  %91 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %92 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  br label %98

93:                                               ; preds = %1
  %94 = load i32, i32* @resumption_waker, align 4
  %95 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %96 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %95, i32 0, i32 1
  %97 = call i32 @queue_work(i32 %94, i32* %96)
  br label %98

98:                                               ; preds = %93, %89
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %87
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dbg_hid(i8*) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @err_hid(i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
