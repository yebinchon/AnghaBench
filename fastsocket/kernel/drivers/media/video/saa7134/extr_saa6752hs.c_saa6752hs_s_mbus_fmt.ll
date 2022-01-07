; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_saa6752hs_s_mbus_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_saa6752hs_s_mbus_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32, i32 }
%struct.saa6752hs_state = type { i32 }

@V4L2_MBUS_FMT_FIXED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SAA6752HS_VF_D1 = common dso_local global i32 0, align 4
@SAA6752HS_VF_2_3_D1 = common dso_local global i32 0, align 4
@SAA6752HS_VF_1_2_D1 = common dso_local global i32 0, align 4
@SAA6752HS_VF_SIF = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @saa6752hs_s_mbus_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6752hs_s_mbus_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.saa6752hs_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev* %10)
  store %struct.saa6752hs_state* %11, %struct.saa6752hs_state** %6, align 8
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_MBUS_FMT_FIXED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %94

20:                                               ; preds = %2
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 352
  %25 = call i32 @abs(i32 %24) #3
  store i32 %25, i32* %7, align 4
  %26 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 480
  %30 = call i32 @abs(i32 %29) #3
  store i32 %30, i32* %8, align 4
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 720
  %35 = call i32 @abs(i32 %34) #3
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %20
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 1
  store i32 720, i32* %41, align 8
  %42 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %42, i32 0, i32 2
  store i32 576, i32* %43, align 4
  %44 = load i32, i32* @SAA6752HS_VF_D1, align 4
  %45 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %46 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %87

47:                                               ; preds = %20
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 1
  store i32 480, i32* %53, align 8
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %54, i32 0, i32 2
  store i32 576, i32* %55, align 4
  %56 = load i32, i32* @SAA6752HS_VF_2_3_D1, align 4
  %57 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %58 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %86

59:                                               ; preds = %47
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %60, i32 0, i32 1
  store i32 352, i32* %61, align 8
  %62 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 576
  %66 = call i32 @abs(i32 %65) #3
  %67 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 288
  %71 = call i32 @abs(i32 %70) #3
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %59
  %74 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %74, i32 0, i32 2
  store i32 576, i32* %75, align 4
  %76 = load i32, i32* @SAA6752HS_VF_1_2_D1, align 4
  %77 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %78 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %85

79:                                               ; preds = %59
  %80 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %80, i32 0, i32 2
  store i32 288, i32* %81, align 4
  %82 = load i32, i32* @SAA6752HS_VF_SIF, align 4
  %83 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %84 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %73
  br label %86

86:                                               ; preds = %85, %51
  br label %87

87:                                               ; preds = %86, %39
  %88 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %89 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %92 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %87, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
