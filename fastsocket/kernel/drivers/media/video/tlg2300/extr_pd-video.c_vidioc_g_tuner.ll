; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.front_face = type { %struct.poseidon* }
%struct.poseidon = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tuner_atv_sig_stat_s = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TUNER_STATUS = common dso_local global i32 0, align 4
@TLG_MODE_ANALOG_TV = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@debug_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"P:%d,S:%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Telegent Systems\00", align 1
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@TUNER_FREQ_MIN = common dso_local global i32 0, align 4
@TUNER_FREQ_MAX = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_NORM = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@pd_audio_modes = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.front_face*, align 8
  %9 = alloca %struct.poseidon*, align 8
  %10 = alloca %struct.tuner_atv_sig_stat_s, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.front_face*
  store %struct.front_face* %16, %struct.front_face** %8, align 8
  %17 = load %struct.front_face*, %struct.front_face** %8, align 8
  %18 = getelementptr inbounds %struct.front_face, %struct.front_face* %17, i32 0, i32 0
  %19 = load %struct.poseidon*, %struct.poseidon** %18, align 8
  store %struct.poseidon* %19, %struct.poseidon** %9, align 8
  store i32 5, i32* %11, align 4
  %20 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 0, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %149

27:                                               ; preds = %3
  %28 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %29 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %32 = load i32, i32* @TUNER_STATUS, align 4
  %33 = load i32, i32* @TLG_MODE_ANALOG_TV, align 4
  %34 = call i32 @send_get_req(%struct.poseidon* %31, i32 %32, i32 %33, %struct.tuner_atv_sig_stat_s* %10, i32* %13, i32 24)
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %49, %27
  %36 = getelementptr inbounds %struct.tuner_atv_sig_stat_s, %struct.tuner_atv_sig_stat_s* %10, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %11, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %39, %35
  %48 = phi i1 [ false, %39 ], [ false, %35 ], [ %46, %43 ]
  br i1 %48, label %49, label %58

49:                                               ; preds = %47
  %50 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %51 = call i32 @set_current_state(i32 %50)
  %52 = load i32, i32* @HZ, align 4
  %53 = call i32 @schedule_timeout(i32 %52)
  %54 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %55 = load i32, i32* @TUNER_STATUS, align 4
  %56 = load i32, i32* @TLG_MODE_ANALOG_TV, align 4
  %57 = call i32 @send_get_req(%struct.poseidon* %54, i32 %55, i32 %56, %struct.tuner_atv_sig_stat_s* %10, i32* %13, i32 24)
  store i32 %57, i32* %12, align 4
  br label %35

58:                                               ; preds = %47
  %59 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %60 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i64, i64* @debug_mode, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tuner_atv_sig_stat_s, %struct.tuner_atv_sig_stat_s* %10, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.tuner_atv_sig_stat_s, %struct.tuner_atv_sig_stat_s* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %66, i32 %68)
  br label %70

70:                                               ; preds = %64, %58
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %70
  %77 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  br label %99

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.tuner_atv_sig_stat_s, %struct.tuner_atv_sig_stat_s* %10, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.tuner_atv_sig_stat_s, %struct.tuner_atv_sig_stat_s* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %88, i32 0, i32 1
  store i32 65535, i32* %89, align 8
  br label %98

90:                                               ; preds = %83, %79
  %91 = getelementptr inbounds %struct.tuner_atv_sig_stat_s, %struct.tuner_atv_sig_stat_s* %10, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %92, 255
  %94 = sdiv i32 %93, 10
  %95 = shl i32 %94, 8
  %96 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %90, %87
  br label %99

99:                                               ; preds = %98, %76
  %100 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @strcpy(i32 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %105 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @TUNER_FREQ_MIN, align 4
  %108 = sdiv i32 %107, 62500
  %109 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @TUNER_FREQ_MAX, align 4
  %112 = sdiv i32 %111, 62500
  %113 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @V4L2_TUNER_CAP_NORM, align 4
  %116 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %123 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %125 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %14, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pd_audio_modes, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pd_audio_modes, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %144 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  %145 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %146 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %145, i32 0, i32 5
  store i64 0, i64* %146, align 8
  %147 = load %struct.front_face*, %struct.front_face** %8, align 8
  %148 = call i32 @logs(%struct.front_face* %147)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %99, %24
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_get_req(%struct.poseidon*, i32, i32, %struct.tuner_atv_sig_stat_s*, i32*, i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @log(i8*, i64, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @logs(%struct.front_face*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
