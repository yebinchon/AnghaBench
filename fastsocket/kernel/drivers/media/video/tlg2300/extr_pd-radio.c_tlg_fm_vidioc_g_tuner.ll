; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_tlg_fm_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_tlg_fm_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.poseidon* }
%struct.poseidon = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.tuner_fm_sig_stat_s = type { i32, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@TUNER_FREQ_MIN_FM = common dso_local global i32 0, align 4
@TUNER_FREQ_MAX_FM = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@TUNER_STATUS = common dso_local global i32 0, align 4
@TLG_MODE_FM_RADIO = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @tlg_fm_vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlg_fm_vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.tuner_fm_sig_stat_s, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.poseidon*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %13 = bitcast %struct.tuner_fm_sig_stat_s* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  store i32 5, i32* %11, align 4
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.poseidon*, %struct.poseidon** %15, align 8
  store %struct.poseidon* %16, %struct.poseidon** %12, align 8
  %17 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %116

24:                                               ; preds = %3
  %25 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %26 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @TUNER_FREQ_MIN_FM, align 4
  %32 = sdiv i32 %31, 62500
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @TUNER_FREQ_MAX_FM, align 4
  %36 = sdiv i32 %35, 62500
  %37 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %40 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %43 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %45, i32 0, i32 3
  store i32 0, i32* %46, align 8
  %47 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.poseidon*, %struct.poseidon** %12, align 8
  %50 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.poseidon*, %struct.poseidon** %12, align 8
  %53 = load i32, i32* @TUNER_STATUS, align 4
  %54 = load i32, i32* @TLG_MODE_FM_RADIO, align 4
  %55 = call i32 @send_get_req(%struct.poseidon* %52, i32 %53, i32 %54, %struct.tuner_fm_sig_stat_s* %8, i32* %10, i32 32)
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %70, %24
  %57 = getelementptr inbounds %struct.tuner_fm_sig_stat_s, %struct.tuner_fm_sig_stat_s* %8, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %11, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %64, %60, %56
  %69 = phi i1 [ false, %60 ], [ false, %56 ], [ %67, %64 ]
  br i1 %69, label %70, label %79

70:                                               ; preds = %68
  %71 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %72 = call i32 @set_current_state(i32 %71)
  %73 = load i32, i32* @HZ, align 4
  %74 = call i32 @schedule_timeout(i32 %73)
  %75 = load %struct.poseidon*, %struct.poseidon** %12, align 8
  %76 = load i32, i32* @TUNER_STATUS, align 4
  %77 = load i32, i32* @TLG_MODE_FM_RADIO, align 4
  %78 = call i32 @send_get_req(%struct.poseidon* %75, i32 %76, i32 %77, %struct.tuner_fm_sig_stat_s* %8, i32* %10, i32 32)
  store i32 %78, i32* %9, align 4
  br label %56

79:                                               ; preds = %68
  %80 = load %struct.poseidon*, %struct.poseidon** %12, align 8
  %81 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85, %79
  %89 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %89, i32 0, i32 3
  store i32 0, i32* %90, align 8
  br label %115

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.tuner_fm_sig_stat_s, %struct.tuner_fm_sig_stat_s* %8, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.tuner_fm_sig_stat_s, %struct.tuner_fm_sig_stat_s* %8, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95, %91
  %100 = getelementptr inbounds %struct.tuner_fm_sig_stat_s, %struct.tuner_fm_sig_stat_s* %8, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %104, i32 0, i32 3
  store i32 65535, i32* %105, align 8
  br label %114

106:                                              ; preds = %99, %95
  %107 = getelementptr inbounds %struct.tuner_fm_sig_stat_s, %struct.tuner_fm_sig_stat_s* %8, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 255
  %110 = sdiv i32 %109, 10
  %111 = shl i32 %110, 8
  %112 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %106, %103
  br label %115

115:                                              ; preds = %114, %88
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %21
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @send_get_req(%struct.poseidon*, i32, i32, %struct.tuner_fm_sig_stat_s*, i32*, i32) #2

declare dso_local i32 @set_current_state(i32) #2

declare dso_local i32 @schedule_timeout(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
