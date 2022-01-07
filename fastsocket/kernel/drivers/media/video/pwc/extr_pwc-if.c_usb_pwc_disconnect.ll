; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_usb_pwc_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_usb_pwc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pwc_device* }
%struct.pwc_device = type { i32, i32, i64, i32, i32, i32* }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"pwc_disconnect() Called without private pointer.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"pwc_disconnect() already called for %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"pwc_disconnect() Woops: pointer mismatch udev/pdev.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Disconnected while webcam is in use!\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Unregistering video device in disconnect().\0A\00", align 1
@MAX_DEV_HINTS = common dso_local global i32 0, align 4
@device_hint = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_pwc_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_pwc_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.pwc_device* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.pwc_device* %6, %struct.pwc_device** %3, align 8
  %7 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %8 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call i32 @usb_set_intfdata(%struct.usb_interface* %10, i32* null)
  %12 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %13 = icmp eq %struct.pwc_device* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %60

16:                                               ; preds = %1
  %17 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %18 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %23 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.pwc_device* %22)
  br label %60

24:                                               ; preds = %16
  %25 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %26 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %29 = call i32* @interface_to_usbdev(%struct.usb_interface* %28)
  %30 = icmp ne i32* %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %60

33:                                               ; preds = %24
  %34 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %35 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = call i32 @PWC_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @EPIPE, align 4
  %41 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %42 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %45 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %44, i32 0, i32 3
  %46 = call i32 @wake_up_interruptible(i32* %45)
  %47 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %48 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %53 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %55 = call i32 @pwc_iso_stop(%struct.pwc_device* %54)
  br label %85

56:                                               ; preds = %43
  %57 = call i32 @PWC_DEBUG_PROBE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %59 = call i32 @pwc_cleanup(%struct.pwc_device* %58)
  br label %60

60:                                               ; preds = %56, %31, %21, %14
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @MAX_DEV_HINTS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @device_hint, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.pwc_device*, %struct.pwc_device** %70, align 8
  %72 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %73 = icmp eq %struct.pwc_device* %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @device_hint, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store %struct.pwc_device* null, %struct.pwc_device** %79, align 8
  br label %80

80:                                               ; preds = %74, %65
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %61

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84, %51
  %86 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %87 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  ret void
}

declare dso_local %struct.pwc_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @PWC_ERROR(i8*, ...) #1

declare dso_local i32* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @PWC_INFO(i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @pwc_iso_stop(%struct.pwc_device*) #1

declare dso_local i32 @PWC_DEBUG_PROBE(i8*) #1

declare dso_local i32 @pwc_cleanup(%struct.pwc_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
