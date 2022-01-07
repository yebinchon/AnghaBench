; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.usb_stv = type { i32, i32, i32 }

@STV680_NUMFRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"STV(e): Could not rvmalloc frame bufer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @stv_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.usb_stv*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call %struct.video_device* @video_devdata(%struct.file* %6)
  store %struct.video_device* %7, %struct.video_device** %3, align 8
  %8 = load %struct.video_device*, %struct.video_device** %3, align 8
  %9 = call %struct.usb_stv* @video_get_drvdata(%struct.video_device* %8)
  store %struct.usb_stv* %9, %struct.usb_stv** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %12 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %14 = call i32 @stv_init(%struct.usb_stv* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %19 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STV680_NUMFRAMES, align 4
  %22 = mul nsw i32 %20, %21
  %23 = call i32 @rvmalloc(i32 %22)
  %24 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %25 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %27 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %17
  %31 = call i32 @PDEBUG(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %17
  %35 = load %struct.video_device*, %struct.video_device** %3, align 8
  %36 = load %struct.file*, %struct.file** %2, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  store %struct.video_device* %35, %struct.video_device** %37, align 8
  br label %38

38:                                               ; preds = %34, %1
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %43 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = call i32 (...) @unlock_kernel()
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.usb_stv* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @stv_init(%struct.usb_stv*) #1

declare dso_local i32 @rvmalloc(i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
