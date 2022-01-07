; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7670_win_size = type { i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frmsizeenum = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ov7670_info = type { i64, i64 }

@N_WIN_SIZES = common dso_local global i32 0, align 4
@ov7670_win_sizes = common dso_local global %struct.ov7670_win_size* null, align 8
@V4L2_FRMSIZE_TYPE_DISCRETE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frmsizeenum*)* @ov7670_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_enum_framesizes(%struct.v4l2_subdev* %0, %struct.v4l2_frmsizeenum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_frmsizeenum*, align 8
  %6 = alloca %struct.ov7670_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ov7670_win_size*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_frmsizeenum* %1, %struct.v4l2_frmsizeenum** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %11)
  store %struct.ov7670_info* %12, %struct.ov7670_info** %6, align 8
  store i32 -1, i32* %8, align 4
  %13 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %74, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @N_WIN_SIZES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %16
  %21 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** @ov7670_win_sizes, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %21, i64 %22
  store %struct.ov7670_win_size* %23, %struct.ov7670_win_size** %10, align 8
  %24 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %25 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %30 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %33 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %74

37:                                               ; preds = %28, %20
  %38 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %39 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %44 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %47 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %74

51:                                               ; preds = %42, %37
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load i32, i32* @V4L2_FRMSIZE_TYPE_DISCRETE, align 4
  %59 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %62 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %10, align 8
  %68 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  store i32 0, i32* %3, align 4
  br label %80

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73, %50, %36
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %16

77:                                               ; preds = %16
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %57
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
