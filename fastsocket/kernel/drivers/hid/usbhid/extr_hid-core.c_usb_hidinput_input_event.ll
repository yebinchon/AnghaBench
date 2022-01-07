; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usb_hidinput_input_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usb_hidinput_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32 }
%struct.hid_field = type { i32 }

@EV_FF = common dso_local global i32 0, align 4
@EV_LED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"event field not found\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @usb_hidinput_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hidinput_input_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hid_device*, align 8
  %11 = alloca %struct.usbhid_device*, align 8
  %12 = alloca %struct.hid_field*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %16 = call %struct.hid_device* @input_get_drvdata(%struct.input_dev* %15)
  store %struct.hid_device* %16, %struct.hid_device** %10, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 0
  %19 = load %struct.usbhid_device*, %struct.usbhid_device** %18, align 8
  store %struct.usbhid_device* %19, %struct.usbhid_device** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @EV_FF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @input_ff_event(%struct.input_dev* %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %84

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EV_LED, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %84

34:                                               ; preds = %29
  %35 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @hidinput_find_field(%struct.hid_device* %35, i32 %36, i32 %37, %struct.hid_field** %12)
  store i32 %38, i32* %14, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 0
  %43 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %84

44:                                               ; preds = %34
  %45 = load %struct.hid_field*, %struct.hid_field** %12, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @hid_set_field(%struct.hid_field* %45, i32 %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load %struct.usbhid_device*, %struct.usbhid_device** %11, align 8
  %53 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %52, i32 0, i32 0
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.usbhid_device*, %struct.usbhid_device** %11, align 8
  %57 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.usbhid_device*, %struct.usbhid_device** %11, align 8
  %61 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %60, i32 0, i32 0
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %77

64:                                               ; preds = %44
  %65 = load %struct.usbhid_device*, %struct.usbhid_device** %11, align 8
  %66 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %65, i32 0, i32 0
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.usbhid_device*, %struct.usbhid_device** %11, align 8
  %70 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.usbhid_device*, %struct.usbhid_device** %11, align 8
  %74 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %73, i32 0, i32 0
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %64, %51
  %78 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %79 = load %struct.hid_field*, %struct.hid_field** %12, align 8
  %80 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @USB_DIR_OUT, align 4
  %83 = call i32 @usbhid_submit_report(%struct.hid_device* %78, i32 %81, i32 %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %77, %40, %33, %23
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.hid_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @input_ff_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @hidinput_find_field(%struct.hid_device*, i32, i32, %struct.hid_field**) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hid_set_field(%struct.hid_field*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usbhid_submit_report(%struct.hid_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
