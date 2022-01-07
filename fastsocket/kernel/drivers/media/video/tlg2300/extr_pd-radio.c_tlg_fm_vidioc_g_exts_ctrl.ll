; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_tlg_fm_vidioc_g_exts_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_tlg_fm_vidioc_g_exts_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.poseidon* }
%struct.poseidon = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i64, i32 }

@V4L2_CTRL_CLASS_FM_TX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_PREEMPHASIS = common dso_local global i64 0, align 8
@MAX_PREEMPHASIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* @tlg_fm_vidioc_g_exts_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlg_fm_vidioc_g_exts_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.poseidon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_ext_control*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.poseidon*, %struct.poseidon** %12, align 8
  store %struct.poseidon* %13, %struct.poseidon** %8, align 8
  %14 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_CTRL_CLASS_FM_TX, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %30, i32 0, i32 2
  %32 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %32, i64 %34
  store %struct.v4l2_ext_control* %35, %struct.v4l2_ext_control** %10, align 8
  %36 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %37 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @V4L2_CID_TUNE_PREEMPHASIS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %54

42:                                               ; preds = %29
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @MAX_PREEMPHASIS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.poseidon*, %struct.poseidon** %8, align 8
  %48 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %52 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %46, %42
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %23

57:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
