; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_v4l1_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_v4l1_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.usb_ov511 = type { i64, i32, i64, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"opening\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OV511_NUMFRAMES = common dso_local global i32 0, align 4
@FRAME_UNUSED = common dso_local global i32 0, align 4
@dumppix = common dso_local global i32 0, align 4
@LED_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @ov51x_v4l1_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov51x_v4l1_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.video_device* @video_devdata(%struct.file* %7)
  store %struct.video_device* %8, %struct.video_device** %3, align 8
  %9 = load %struct.video_device*, %struct.video_device** %3, align 8
  %10 = call %struct.usb_ov511* @video_get_drvdata(%struct.video_device* %9)
  store %struct.usb_ov511* %10, %struct.usb_ov511** %4, align 8
  %11 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %13 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %18 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %105

22:                                               ; preds = %1
  %23 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %24 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %26 = call i32 @ov51x_set_default_params(%struct.usb_ov511* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %105

30:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @OV511_NUMFRAMES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i32, i32* @FRAME_UNUSED, align 4
  %37 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %38 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %37, i32 0, i32 5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %36, i32* %43, align 8
  %44 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %45 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %56 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %61 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %66 = call i32 @request_decompressor(%struct.usb_ov511* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @dumppix, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %105

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %59, %54
  %75 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %76 = call i32 @ov51x_alloc(%struct.usb_ov511* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %105

80:                                               ; preds = %74
  %81 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %82 = call i32 @ov51x_init_isoc(%struct.usb_ov511* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %87 = call i32 @ov51x_dealloc(%struct.usb_ov511* %86)
  br label %105

88:                                               ; preds = %80
  %89 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %90 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.video_device*, %struct.video_device** %3, align 8
  %94 = load %struct.file*, %struct.file** %2, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  store %struct.video_device* %93, %struct.video_device** %95, align 8
  %96 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %97 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @LED_AUTO, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %103 = call i32 @ov51x_led_control(%struct.usb_ov511* %102, i32 1)
  br label %104

104:                                              ; preds = %101, %88
  br label %105

105:                                              ; preds = %104, %85, %79, %72, %29, %21
  %106 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %107 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.usb_ov511* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov51x_set_default_params(%struct.usb_ov511*) #1

declare dso_local i32 @request_decompressor(%struct.usb_ov511*) #1

declare dso_local i32 @ov51x_alloc(%struct.usb_ov511*) #1

declare dso_local i32 @ov51x_init_isoc(%struct.usb_ov511*) #1

declare dso_local i32 @ov51x_dealloc(%struct.usb_ov511*) #1

declare dso_local i32 @ov51x_led_control(%struct.usb_ov511*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
