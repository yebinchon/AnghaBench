; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.front_face = type { %struct.poseidon* }
%struct.poseidon = type { i32 }
%struct.poseidon_control = type { i32 }
%struct.tuner_custom_parameter_s = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TUNER_CUSTOM_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.front_face*, align 8
  %9 = alloca %struct.poseidon*, align 8
  %10 = alloca %struct.poseidon_control*, align 8
  %11 = alloca %struct.tuner_custom_parameter_s, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.front_face*
  store %struct.front_face* %15, %struct.front_face** %8, align 8
  %16 = load %struct.front_face*, %struct.front_face** %8, align 8
  %17 = getelementptr inbounds %struct.front_face, %struct.front_face* %16, i32 0, i32 0
  %18 = load %struct.poseidon*, %struct.poseidon** %17, align 8
  store %struct.poseidon* %18, %struct.poseidon** %9, align 8
  store %struct.poseidon_control* null, %struct.poseidon_control** %10, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.poseidon_control* @check_control_id(i32 %21)
  store %struct.poseidon_control* %22, %struct.poseidon_control** %10, align 8
  %23 = load %struct.poseidon_control*, %struct.poseidon_control** %10, align 8
  %24 = icmp ne %struct.poseidon_control* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %52

28:                                               ; preds = %3
  %29 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %30 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %33 = load i32, i32* @TUNER_CUSTOM_PARAMETER, align 4
  %34 = load %struct.poseidon_control*, %struct.poseidon_control** %10, align 8
  %35 = getelementptr inbounds %struct.poseidon_control, %struct.poseidon_control* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @send_get_req(%struct.poseidon* %32, i32 %33, i32 %36, %struct.tuner_custom_parameter_s* %11, i64* %13, i32 4)
  store i64 %37, i64* %12, align 8
  %38 = load %struct.poseidon*, %struct.poseidon** %9, align 8
  %39 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %28
  store i32 -1, i32* %4, align 4
  br label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tuner_custom_parameter_s, %struct.tuner_custom_parameter_s* %11, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %46, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.poseidon_control* @check_control_id(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @send_get_req(%struct.poseidon*, i32, i32, %struct.tuner_custom_parameter_s*, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
