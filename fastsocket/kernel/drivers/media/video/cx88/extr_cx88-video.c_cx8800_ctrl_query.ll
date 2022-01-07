; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx8800_ctrl_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx8800_ctrl_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.v4l2_queryctrl }
%struct.v4l2_queryctrl = type { i64, i32 }
%struct.cx88_core = type { i32 }

@V4L2_CID_BASE = common dso_local global i64 0, align 8
@V4L2_CID_LASTP1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CX8800_CTLS = common dso_local global i32 0, align 4
@cx8800_ctls = common dso_local global %struct.TYPE_2__* null, align 8
@no_ctl = common dso_local global %struct.v4l2_queryctrl zeroinitializer, align 8
@V4L2_CID_CHROMA_AGC = common dso_local global i64 0, align 8
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx8800_ctrl_query(%struct.cx88_core* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %7 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @V4L2_CID_BASE, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_CID_LASTP1, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %82

21:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CX8800_CTLS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx8800_ctls, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %43

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %22

43:                                               ; preds = %38, %22
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CX8800_CTLS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %49 = bitcast %struct.v4l2_queryctrl* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 bitcast (%struct.v4l2_queryctrl* @no_ctl to i8*), i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %82

50:                                               ; preds = %43
  %51 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx8800_ctls, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = bitcast %struct.v4l2_queryctrl* %51 to i8*
  %58 = bitcast %struct.v4l2_queryctrl* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx8800_ctls, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @V4L2_CID_CHROMA_AGC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %50
  %69 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %70 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @V4L2_STD_SECAM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %77 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %68, %50
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %47, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
