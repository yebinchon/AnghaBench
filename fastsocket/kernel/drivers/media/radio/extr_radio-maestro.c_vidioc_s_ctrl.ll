; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maestro.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-maestro.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.maestro = type { i32, i32, i64 }

@IO_MASK = common dso_local global i64 0, align 8
@STR_WREN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.maestro*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.maestro* @video_drvdata(%struct.file* %11)
  store %struct.maestro* %12, %struct.maestro** %8, align 8
  %13 = load %struct.maestro*, %struct.maestro** %8, align 8
  %14 = getelementptr inbounds %struct.maestro, %struct.maestro* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %59 [
    i32 128, label %19
  ]

19:                                               ; preds = %3
  %20 = load %struct.maestro*, %struct.maestro** %8, align 8
  %21 = getelementptr inbounds %struct.maestro, %struct.maestro* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @IO_MASK, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @inw(i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* @STR_WREN, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @IO_MASK, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outw(i64 %28, i64 %31)
  %33 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.maestro*, %struct.maestro** %8, align 8
  %37 = getelementptr inbounds %struct.maestro, %struct.maestro* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.maestro*, %struct.maestro** %8, align 8
  %39 = getelementptr inbounds %struct.maestro, %struct.maestro* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %19
  %43 = load i64, i64* @STR_WREN, align 8
  br label %45

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i64 [ %43, %42 ], [ 0, %44 ]
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @outw(i64 %46, i64 %47)
  %49 = call i32 @udelay(i32 4)
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @IO_MASK, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @outw(i64 %50, i64 %53)
  %55 = call i32 @msleep(i32 125)
  %56 = load %struct.maestro*, %struct.maestro** %8, align 8
  %57 = getelementptr inbounds %struct.maestro, %struct.maestro* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  store i32 0, i32* %4, align 4
  br label %62

59:                                               ; preds = %3
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %45
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.maestro* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @inw(i64) #1

declare dso_local i32 @outw(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
