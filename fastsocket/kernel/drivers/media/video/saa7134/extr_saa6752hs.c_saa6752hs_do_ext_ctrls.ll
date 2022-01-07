; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_saa6752hs_do_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_saa6752hs_do_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, i32, i64 }
%struct.saa6752hs_state = type { %struct.saa6752hs_mpeg_params, i32 }
%struct.saa6752hs_mpeg_params = type { i32 }

@V4L2_CTRL_CLASS_MPEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_ext_controls*, i32)* @saa6752hs_do_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6752hs_do_ext_ctrls(%struct.v4l2_subdev* %0, %struct.v4l2_ext_controls* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_ext_controls*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa6752hs_state*, align 8
  %9 = alloca %struct.saa6752hs_mpeg_params, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev* %12)
  store %struct.saa6752hs_state* %13, %struct.saa6752hs_state** %8, align 8
  %14 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_CTRL_CLASS_MPEG, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %65

22:                                               ; preds = %3
  %23 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %8, align 8
  %24 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %23, i32 0, i32 0
  %25 = bitcast %struct.saa6752hs_mpeg_params* %9 to i8*
  %26 = bitcast %struct.saa6752hs_mpeg_params* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %53, %22
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %8, align 8
  %35 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @handle_ctrl(i32 %36, %struct.saa6752hs_mpeg_params* %9, i64 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %65

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %27

56:                                               ; preds = %27
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %8, align 8
  %61 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %60, i32 0, i32 0
  %62 = bitcast %struct.saa6752hs_mpeg_params* %61 to i8*
  %63 = bitcast %struct.saa6752hs_mpeg_params* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  br label %64

64:                                               ; preds = %59, %56
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %47, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @handle_ctrl(i32, %struct.saa6752hs_mpeg_params*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
