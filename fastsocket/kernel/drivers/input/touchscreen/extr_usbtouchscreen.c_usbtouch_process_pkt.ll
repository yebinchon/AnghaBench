; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_usbtouchscreen.c_usbtouch_process_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_usbtouchscreen.c_usbtouch_process_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtouch_usb = type { i32, i32, i32, i32, i32, %struct.usbtouch_device_info* }
%struct.usbtouch_device_info = type { i64, i32 (%struct.usbtouch_usb*, i8*)* }

@BTN_TOUCH = common dso_local global i32 0, align 4
@swap_xy = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbtouch_usb*, i8*, i32)* @usbtouch_process_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbtouch_process_pkt(%struct.usbtouch_usb* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.usbtouch_usb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbtouch_device_info*, align 8
  store %struct.usbtouch_usb* %0, %struct.usbtouch_usb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %9 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %8, i32 0, i32 5
  %10 = load %struct.usbtouch_device_info*, %struct.usbtouch_device_info** %9, align 8
  store %struct.usbtouch_device_info* %10, %struct.usbtouch_device_info** %7, align 8
  %11 = load %struct.usbtouch_device_info*, %struct.usbtouch_device_info** %7, align 8
  %12 = getelementptr inbounds %struct.usbtouch_device_info, %struct.usbtouch_device_info* %11, i32 0, i32 1
  %13 = load i32 (%struct.usbtouch_usb*, i8*)*, i32 (%struct.usbtouch_usb*, i8*)** %12, align 8
  %14 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 %13(%struct.usbtouch_usb* %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %83

19:                                               ; preds = %3
  %20 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %21 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BTN_TOUCH, align 4
  %24 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %25 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @input_report_key(i32 %22, i32 %23, i32 %26)
  %28 = load i64, i64* @swap_xy, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %19
  %31 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %32 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ABS_X, align 4
  %35 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %36 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @input_report_abs(i32 %33, i32 %34, i32 %37)
  %39 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %40 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ABS_Y, align 4
  %43 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %44 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @input_report_abs(i32 %41, i32 %42, i32 %45)
  br label %64

47:                                               ; preds = %19
  %48 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %49 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ABS_X, align 4
  %52 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %53 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @input_report_abs(i32 %50, i32 %51, i32 %54)
  %56 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %57 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ABS_Y, align 4
  %60 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %61 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @input_report_abs(i32 %58, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %47, %30
  %65 = load %struct.usbtouch_device_info*, %struct.usbtouch_device_info** %7, align 8
  %66 = getelementptr inbounds %struct.usbtouch_device_info, %struct.usbtouch_device_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %71 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ABS_PRESSURE, align 4
  %74 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %75 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @input_report_abs(i32 %72, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %69, %64
  %79 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %4, align 8
  %80 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @input_sync(i32 %81)
  br label %83

83:                                               ; preds = %78, %18
  ret void
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
