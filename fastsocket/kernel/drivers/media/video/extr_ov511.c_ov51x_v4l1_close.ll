; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_v4l1_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_v4l1_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.usb_ov511 = type { i64, i32, %struct.usb_ov511*, i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ov511_close\00", align 1
@LED_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @ov51x_v4l1_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov51x_v4l1_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.usb_ov511*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.video_device*, %struct.video_device** %6, align 8
  store %struct.video_device* %7, %struct.video_device** %3, align 8
  %8 = load %struct.video_device*, %struct.video_device** %3, align 8
  %9 = call %struct.usb_ov511* @video_get_drvdata(%struct.video_device* %8)
  store %struct.usb_ov511* %9, %struct.usb_ov511** %4, align 8
  %10 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %12 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %11, i32 0, i32 4
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %15 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %19 = call i32 @ov51x_stop_isoc(%struct.usb_ov511* %18)
  %20 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %21 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LED_AUTO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %27 = call i32 @ov51x_led_control(%struct.usb_ov511* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %30 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %35 = call i32 @ov51x_dealloc(%struct.usb_ov511* %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %38 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %37, i32 0, i32 4
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %41 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %36
  %45 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %46 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %45, i32 0, i32 1
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %49 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %48, i32 0, i32 2
  %50 = load %struct.usb_ov511*, %struct.usb_ov511** %49, align 8
  %51 = call i32 @kfree(%struct.usb_ov511* %50)
  %52 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %53 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %52, i32 0, i32 2
  store %struct.usb_ov511* null, %struct.usb_ov511** %53, align 8
  %54 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %55 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %58 = call i32 @ov51x_dealloc(%struct.usb_ov511* %57)
  %59 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %60 = call i32 @kfree(%struct.usb_ov511* %59)
  store %struct.usb_ov511* null, %struct.usb_ov511** %4, align 8
  br label %61

61:                                               ; preds = %44, %36
  %62 = load %struct.file*, %struct.file** %2, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  store %struct.video_device* null, %struct.video_device** %63, align 8
  ret i32 0
}

declare dso_local %struct.usb_ov511* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov51x_stop_isoc(%struct.usb_ov511*) #1

declare dso_local i32 @ov51x_led_control(%struct.usb_ov511*, i32) #1

declare dso_local i32 @ov51x_dealloc(%struct.usb_ov511*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.usb_ov511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
