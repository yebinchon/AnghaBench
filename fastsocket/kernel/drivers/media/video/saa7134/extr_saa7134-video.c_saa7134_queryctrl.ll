; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i64 }
%struct.file = type { i32 }

@V4L2_CID_BASE = common dso_local global i64 0, align 8
@V4L2_CID_LASTP1 = common dso_local global i64 0, align 8
@V4L2_CID_PRIVATE_BASE = common dso_local global i64 0, align 8
@V4L2_CID_PRIVATE_LASTP1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@no_ctrl = common dso_local global %struct.v4l2_queryctrl zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %9 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_CID_BASE, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_CID_LASTP1, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14, %3
  %21 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_CID_PRIVATE_BASE, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_CID_PRIVATE_LASTP1, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %50

35:                                               ; preds = %26, %14
  %36 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.v4l2_queryctrl* @ctrl_by_id(i64 %38)
  store %struct.v4l2_queryctrl* %39, %struct.v4l2_queryctrl** %8, align 8
  %40 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %41 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %42 = icmp ne %struct.v4l2_queryctrl* null, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %45 = bitcast %struct.v4l2_queryctrl* %40 to i8*
  %46 = bitcast %struct.v4l2_queryctrl* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  br label %49

47:                                               ; preds = %35
  %48 = bitcast %struct.v4l2_queryctrl* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 bitcast (%struct.v4l2_queryctrl* @no_ctrl to i8*), i64 8, i1 false)
  br label %49

49:                                               ; preds = %47, %43
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.v4l2_queryctrl* @ctrl_by_id(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
