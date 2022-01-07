; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_mt9v011_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_mt9v011_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.mt9v011 = type { i32, i32, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"g_ctrl called\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @mt9v011_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v011_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.mt9v011*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev* %7)
  store %struct.mt9v011* %8, %struct.mt9v011** %6, align 8
  %9 = load i32, i32* @debug, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call i32 @v4l2_dbg(i32 1, i32 %9, %struct.v4l2_subdev* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %51 [
    i32 131, label %15
    i32 129, label %21
    i32 132, label %27
    i32 130, label %33
    i32 128, label %42
  ]

15:                                               ; preds = %2
  %16 = load %struct.mt9v011*, %struct.mt9v011** %6, align 8
  %17 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.mt9v011*, %struct.mt9v011** %6, align 8
  %23 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %54

27:                                               ; preds = %2
  %28 = load %struct.mt9v011*, %struct.mt9v011** %6, align 8
  %29 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %54

33:                                               ; preds = %2
  %34 = load %struct.mt9v011*, %struct.mt9v011** %6, align 8
  %35 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %54

42:                                               ; preds = %2
  %43 = load %struct.mt9v011*, %struct.mt9v011** %6, align 8
  %44 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %42, %33, %27, %21, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
