; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_usbvision_v4l2_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvision/extr_usbvision-video.c_usbvision_v4l2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.usb_usbvision = type { i64, i32, i64 }

@DBG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@isoc_mode = common dso_local global i64 0, align 8
@ISOC_MODE_COMPRESS = common dso_local global i64 0, align 8
@power_on_at_open = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @usbvision_v4l2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_v4l2_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %6)
  store %struct.usb_usbvision* %7, %struct.usb_usbvision** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @DBG_IO, align 4
  %9 = call i32 @PDEBUG(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %11 = call i32 @usbvision_reset_power_off_timer(%struct.usb_usbvision* %10)
  %12 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %13 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %21 = call i32 @usbvision_scratch_alloc(%struct.usb_usbvision* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i64, i64* @isoc_mode, align 8
  %23 = load i64, i64* @ISOC_MODE_COMPRESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %27 = call i32 @usbvision_decompress_alloc(%struct.usb_usbvision* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %33 = call i32 @usbvision_scratch_free(%struct.usb_usbvision* %32)
  %34 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %35 = call i32 @usbvision_decompress_free(%struct.usb_usbvision* %34)
  br label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %94, label %40

40:                                               ; preds = %37
  %41 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %42 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %47 = call i32 @usbvision_power_on(%struct.usb_usbvision* %46)
  %48 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %49 = call i32 @usbvision_i2c_register(%struct.usb_usbvision* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %52 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  %56 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %57 = load i64, i64* @isoc_mode, align 8
  %58 = call i32 @usbvision_setup(%struct.usb_usbvision* %56, i64 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %63 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  br label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %73 = call i32 @usbvision_begin_streaming(%struct.usb_usbvision* %72)
  %74 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %75 = call i32 @usbvision_init_isoc(%struct.usb_usbvision* %74)
  store i32 %75, i32* %4, align 4
  %76 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %77 = call i32 @usbvision_muxsel(%struct.usb_usbvision* %76, i32 0)
  %78 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %79 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  br label %93

82:                                               ; preds = %68
  %83 = load i64, i64* @power_on_at_open, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %87 = call i32 @usbvision_i2c_unregister(%struct.usb_usbvision* %86)
  %88 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %89 = call i32 @usbvision_power_off(%struct.usb_usbvision* %88)
  %90 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %91 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %90, i32 0, i32 1
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %85, %82
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %37
  %95 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %96 = call i32 @usbvision_empty_framequeues(%struct.usb_usbvision* %95)
  %97 = load i32, i32* @DBG_IO, align 4
  %98 = call i32 @PDEBUG(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @usbvision_reset_power_off_timer(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_scratch_alloc(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_decompress_alloc(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_scratch_free(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_decompress_free(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_power_on(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_i2c_register(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_setup(%struct.usb_usbvision*, i64) #1

declare dso_local i32 @usbvision_begin_streaming(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_init_isoc(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_muxsel(%struct.usb_usbvision*, i32) #1

declare dso_local i32 @usbvision_i2c_unregister(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_power_off(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_empty_framequeues(%struct.usb_usbvision*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
