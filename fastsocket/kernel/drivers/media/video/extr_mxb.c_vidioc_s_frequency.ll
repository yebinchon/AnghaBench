; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i32, i64 }
%struct.saa7146_dev = type { i32, %struct.saa7146_vv*, i64 }
%struct.saa7146_vv = type { i64 }
%struct.mxb = type { %struct.v4l2_frequency, i64 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"VIDIOC_S_FREQ: channel %d does not have a tuner!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"VIDIOC_S_FREQUENCY: freq:0x%08x.\0A\00", align 1
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.mxb*, align 8
  %10 = alloca %struct.saa7146_vv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.saa7146_fh*
  %13 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %12, i32 0, i32 0
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %13, align 8
  store %struct.saa7146_dev* %14, %struct.saa7146_dev** %8, align 8
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %16 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mxb*
  store %struct.mxb* %18, %struct.mxb** %9, align 8
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %20 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %19, i32 0, i32 1
  %21 = load %struct.saa7146_vv*, %struct.saa7146_vv** %20, align 8
  store %struct.saa7146_vv* %21, %struct.saa7146_vv** %10, align 8
  %22 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %78

29:                                               ; preds = %3
  %30 = load i64, i64* @V4L2_TUNER_ANALOG_TV, align 8
  %31 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %78

38:                                               ; preds = %29
  %39 = load %struct.mxb*, %struct.mxb** %9, align 8
  %40 = getelementptr inbounds %struct.mxb, %struct.mxb* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.mxb*, %struct.mxb** %9, align 8
  %45 = getelementptr inbounds %struct.mxb, %struct.mxb* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @DEB_D(i8* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %78

51:                                               ; preds = %38
  %52 = load %struct.mxb*, %struct.mxb** %9, align 8
  %53 = getelementptr inbounds %struct.mxb, %struct.mxb* %52, i32 0, i32 0
  %54 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %55 = bitcast %struct.v4l2_frequency* %53 to i8*
  %56 = bitcast %struct.v4l2_frequency* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = load %struct.mxb*, %struct.mxb** %9, align 8
  %58 = getelementptr inbounds %struct.mxb, %struct.mxb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @DEB_EE(i8* %62)
  %64 = load %struct.mxb*, %struct.mxb** %9, align 8
  %65 = load i32, i32* @tuner, align 4
  %66 = load i32, i32* @s_frequency, align 4
  %67 = load %struct.mxb*, %struct.mxb** %9, align 8
  %68 = getelementptr inbounds %struct.mxb, %struct.mxb* %67, i32 0, i32 0
  %69 = call i32 @tuner_call(%struct.mxb* %64, i32 %65, i32 %66, %struct.v4l2_frequency* %68)
  %70 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %71 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %70, i32 0, i32 0
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  %74 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %76 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %51, %43, %35, %26
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @DEB_D(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @tuner_call(%struct.mxb*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
