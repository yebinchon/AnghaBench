; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_querystd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i64 }

@V4L2_STD_ALL = common dso_local global i32 0, align 4
@V4L2_IDENT_SAA7115 = common dso_local global i64 0, align 8
@R_1F_STATUS_BYTE_2_VD_DEC = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@R_1E_STATUS_BYTE_1_VD_DEC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @saa711x_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_querystd(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.saa711x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.saa711x_state* %10, %struct.saa711x_state** %6, align 8
  %11 = load i32, i32* @V4L2_STD_ALL, align 4
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %14 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_IDENT_SAA7115, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = load i32, i32* @R_1F_STATUS_BYTE_2_VD_DEC, align 4
  %21 = call i32 @saa711x_read(%struct.v4l2_subdev* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @V4L2_STD_525_60, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @V4L2_STD_625_50, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  store i32 0, i32* %3, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %34 = load i32, i32* @R_1E_STATUS_BYTE_1_VD_DEC, align 4
  %35 = call i32 @saa711x_read(%struct.v4l2_subdev* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 3
  switch i32 %37, label %47 [
    i32 1, label %38
    i32 2, label %41
    i32 3, label %44
  ]

38:                                               ; preds = %32
  %39 = load i32, i32* @V4L2_STD_NTSC, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %48

41:                                               ; preds = %32
  %42 = load i32, i32* @V4L2_STD_PAL, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @V4L2_STD_SECAM, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %48

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %44, %41, %38
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
