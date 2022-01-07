; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { i64, %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.ov7670_info = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CLK_SCALE = common dso_local global i32 0, align 4
@REG_CLKRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_streamparm*)* @ov7670_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_parm(%struct.v4l2_subdev* %0, %struct.v4l2_streamparm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_streamparm*, align 8
  %6 = alloca %struct.v4l2_captureparm*, align 8
  %7 = alloca %struct.v4l2_fract*, align 8
  %8 = alloca %struct.ov7670_info*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_streamparm* %1, %struct.v4l2_streamparm** %5, align 8
  %10 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.v4l2_captureparm* %12, %struct.v4l2_captureparm** %6, align 8
  %13 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %13, i32 0, i32 1
  store %struct.v4l2_fract* %14, %struct.v4l2_fract** %7, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %15)
  store %struct.ov7670_info* %16, %struct.ov7670_info** %8, align 8
  %17 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %25
  %34 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33
  store i32 1, i32* %9, align 4
  br label %56

44:                                               ; preds = %38
  %45 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %49 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %51, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %44, %43
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %9, align 4
  br label %67

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @CLK_SCALE, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @CLK_SCALE, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66, %59
  %68 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %69 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 128
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %75 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %79 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sdiv i32 %80, %81
  %83 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %86 = load i32, i32* @REG_CLKRC, align 4
  %87 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %88 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ov7670_write(%struct.v4l2_subdev* %85, i32 %86, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %67, %30, %22
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
