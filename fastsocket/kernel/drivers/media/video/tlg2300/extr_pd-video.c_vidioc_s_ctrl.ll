; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.tuner_custom_parameter_s = type { i32, i32, i32 }
%struct.poseidon_control = type { i32 }
%struct.front_face = type { %struct.poseidon* }
%struct.poseidon = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TUNER_CUSTOM_PARAMETER = common dso_local global i32 0, align 4
@TAKE_REQUEST = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.tuner_custom_parameter_s, align 4
  %9 = alloca %struct.poseidon_control*, align 8
  %10 = alloca %struct.front_face*, align 8
  %11 = alloca %struct.poseidon*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %15 = bitcast %struct.tuner_custom_parameter_s* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 12, i1 false)
  store %struct.poseidon_control* null, %struct.poseidon_control** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.front_face*
  store %struct.front_face* %17, %struct.front_face** %10, align 8
  %18 = load %struct.front_face*, %struct.front_face** %10, align 8
  %19 = getelementptr inbounds %struct.front_face, %struct.front_face* %18, i32 0, i32 0
  %20 = load %struct.poseidon*, %struct.poseidon** %19, align 8
  store %struct.poseidon* %20, %struct.poseidon** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.poseidon_control* @check_control_id(i32 %23)
  store %struct.poseidon_control* %24, %struct.poseidon_control** %9, align 8
  %25 = load %struct.poseidon_control*, %struct.poseidon_control** %9, align 8
  %26 = icmp ne %struct.poseidon_control* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %60

30:                                               ; preds = %3
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.tuner_custom_parameter_s, %struct.tuner_custom_parameter_s* %8, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.poseidon_control*, %struct.poseidon_control** %9, align 8
  %36 = getelementptr inbounds %struct.poseidon_control, %struct.poseidon_control* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.tuner_custom_parameter_s, %struct.tuner_custom_parameter_s* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = bitcast %struct.tuner_custom_parameter_s* %8 to i32*
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load %struct.poseidon*, %struct.poseidon** %11, align 8
  %42 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.poseidon*, %struct.poseidon** %11, align 8
  %45 = load i32, i32* @TUNER_CUSTOM_PARAMETER, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @send_set_req(%struct.poseidon* %44, i32 %45, i32 %46, i32* %13)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.poseidon*, %struct.poseidon** %11, align 8
  %49 = load i32, i32* @TAKE_REQUEST, align 4
  %50 = call i32 @send_set_req(%struct.poseidon* %48, i32 %49, i32 0, i32* %13)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.poseidon*, %struct.poseidon** %11, align 8
  %52 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %55 = call i32 @set_current_state(i32 %54)
  %56 = load i32, i32* @HZ, align 4
  %57 = sdiv i32 %56, 4
  %58 = call i32 @schedule_timeout(i32 %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %30, %27
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.poseidon_control* @check_control_id(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @set_current_state(i32) #2

declare dso_local i32 @schedule_timeout(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
