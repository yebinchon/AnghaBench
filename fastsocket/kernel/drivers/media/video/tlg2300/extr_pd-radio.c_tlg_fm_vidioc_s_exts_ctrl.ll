; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_tlg_fm_vidioc_s_exts_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_tlg_fm_vidioc_s_exts_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.poseidon* }
%struct.poseidon = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i64, i64 }

@V4L2_CTRL_CLASS_FM_TX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_PREEMPHASIS = common dso_local global i64 0, align 8
@MAX_PREEMPHASIS = common dso_local global i64 0, align 8
@preemphasis = common dso_local global i32* null, align 8
@TUNER_AUD_ANA_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* @tlg_fm_vidioc_s_exts_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlg_fm_vidioc_s_exts_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_ext_control*, align 8
  %10 = alloca %struct.poseidon*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %13 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_CTRL_CLASS_FM_TX, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %75

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %71, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %22
  %29 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %29, i32 0, i32 2
  %31 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %31, i64 %33
  store %struct.v4l2_ext_control* %34, %struct.v4l2_ext_control** %9, align 8
  %35 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V4L2_CID_TUNE_PREEMPHASIS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %71

41:                                               ; preds = %28
  %42 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp uge i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAX_PREEMPHASIS, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = load %struct.file*, %struct.file** %5, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load %struct.poseidon*, %struct.poseidon** %54, align 8
  store %struct.poseidon* %55, %struct.poseidon** %10, align 8
  %56 = load i32*, i32** @preemphasis, align 8
  %57 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %9, align 8
  %58 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  %63 = load i32, i32* @TUNER_AUD_ANA_STD, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @send_set_req(%struct.poseidon* %62, i32 %63, i32 %64, i32* %12)
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  %68 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %52, %46, %41
  br label %71

71:                                               ; preds = %70, %40
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %22

74:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %18
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
