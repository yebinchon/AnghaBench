; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i64 }
%struct.file = type { i32 }
%struct.bttv_fh = type { %struct.bttv* }
%struct.bttv = type { i32 }

@V4L2_CID_BASE = common dso_local global i64 0, align 8
@V4L2_CID_LASTP1 = common dso_local global i64 0, align 8
@V4L2_CID_PRIVATE_BASE = common dso_local global i64 0, align 8
@V4L2_CID_PRIVATE_LASTP1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i64 0, align 8
@no_ctl = common dso_local global %struct.v4l2_queryctrl zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @bttv_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  %10 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.bttv_fh*
  store %struct.bttv_fh* %12, %struct.bttv_fh** %8, align 8
  %13 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %14 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %13, i32 0, i32 0
  %15 = load %struct.bttv*, %struct.bttv** %14, align 8
  store %struct.bttv* %15, %struct.bttv** %9, align 8
  %16 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_CID_BASE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_CID_LASTP1, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21, %3
  %28 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_CID_PRIVATE_BASE, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_CID_PRIVATE_LASTP1, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %72

42:                                               ; preds = %33, %21
  %43 = load %struct.bttv*, %struct.bttv** %9, align 8
  %44 = getelementptr inbounds %struct.bttv, %struct.bttv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @V4L2_CID_AUDIO_VOLUME, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %55 = bitcast %struct.v4l2_queryctrl* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 bitcast (%struct.v4l2_queryctrl* @no_ctl to i8*), i64 8, i1 false)
  br label %71

56:                                               ; preds = %47, %42
  %57 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call %struct.v4l2_queryctrl* @ctrl_by_id(i64 %59)
  store %struct.v4l2_queryctrl* %60, %struct.v4l2_queryctrl** %10, align 8
  %61 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %62 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %63 = icmp ne %struct.v4l2_queryctrl* null, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %10, align 8
  %66 = bitcast %struct.v4l2_queryctrl* %61 to i8*
  %67 = bitcast %struct.v4l2_queryctrl* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 8, i1 false)
  br label %70

68:                                               ; preds = %56
  %69 = bitcast %struct.v4l2_queryctrl* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 bitcast (%struct.v4l2_queryctrl* @no_ctl to i8*), i64 8, i1 false)
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %53
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %39
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.v4l2_queryctrl* @ctrl_by_id(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
