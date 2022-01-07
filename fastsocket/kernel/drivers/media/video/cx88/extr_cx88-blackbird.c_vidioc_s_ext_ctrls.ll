; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_s_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_s_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_ext_controls = type { i64 }
%struct.cx8802_dev = type { %struct.cx2341x_mpeg_params, i64 }
%struct.cx2341x_mpeg_params = type { i32 }
%struct.cx8802_fh = type { %struct.cx8802_dev* }

@V4L2_CTRL_CLASS_MPEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VIDIOC_S_EXT_CTRLS = common dso_local global i32 0, align 4
@blackbird_mbox_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* @vidioc_s_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.cx8802_dev*, align 8
  %9 = alloca %struct.cx2341x_mpeg_params, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.cx8802_fh*
  %13 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %12, i32 0, i32 0
  %14 = load %struct.cx8802_dev*, %struct.cx8802_dev** %13, align 8
  store %struct.cx8802_dev* %14, %struct.cx8802_dev** %8, align 8
  %15 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_CTRL_CLASS_MPEG, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %3
  %24 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %25 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %30 = call i32 @blackbird_stop_codec(%struct.cx8802_dev* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %33 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %32, i32 0, i32 0
  %34 = bitcast %struct.cx2341x_mpeg_params* %9 to i8*
  %35 = bitcast %struct.cx2341x_mpeg_params* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 8 %35, i64 4, i1 false)
  %36 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %37 = load i32, i32* @VIDIOC_S_EXT_CTRLS, align 4
  %38 = call i32 @cx2341x_ext_ctrls(%struct.cx2341x_mpeg_params* %9, i32 0, %struct.v4l2_ext_controls* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %31
  %42 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %43 = load i32, i32* @blackbird_mbox_func, align 4
  %44 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %45 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %44, i32 0, i32 0
  %46 = call i32 @cx2341x_update(%struct.cx8802_dev* %42, i32 %43, %struct.cx2341x_mpeg_params* %45, %struct.cx2341x_mpeg_params* %9)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %48 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %47, i32 0, i32 0
  %49 = bitcast %struct.cx2341x_mpeg_params* %48 to i8*
  %50 = bitcast %struct.cx2341x_mpeg_params* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 4 %50, i64 4, i1 false)
  br label %51

51:                                               ; preds = %41, %31
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @blackbird_stop_codec(%struct.cx8802_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cx2341x_ext_ctrls(%struct.cx2341x_mpeg_params*, i32, %struct.v4l2_ext_controls*, i32) #1

declare dso_local i32 @cx2341x_update(%struct.cx8802_dev*, i32, %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
