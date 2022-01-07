; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_cx23885_ctrl_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_cx23885_ctrl_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.v4l2_queryctrl }
%struct.v4l2_queryctrl = type { i64 }

@V4L2_CID_BASE = common dso_local global i64 0, align 8
@V4L2_CID_LASTP1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CX23885_CTLS = common dso_local global i32 0, align 4
@cx23885_ctls = common dso_local global %struct.TYPE_2__* null, align 8
@no_ctl = common dso_local global %struct.v4l2_queryctrl zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_queryctrl*)* @cx23885_ctrl_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_ctrl_query(%struct.v4l2_queryctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_queryctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_queryctrl* %0, %struct.v4l2_queryctrl** %3, align 8
  %5 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @V4L2_CID_BASE, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_CID_LASTP1, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CX23885_CTLS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_ctls, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %33 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %41

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %20

41:                                               ; preds = %36, %20
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @CX23885_CTLS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %47 = bitcast %struct.v4l2_queryctrl* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 bitcast (%struct.v4l2_queryctrl* @no_ctl to i8*), i64 8, i1 false)
  store i32 0, i32* %2, align 4
  br label %57

48:                                               ; preds = %41
  %49 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_ctls, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = bitcast %struct.v4l2_queryctrl* %49 to i8*
  %56 = bitcast %struct.v4l2_queryctrl* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %48, %45, %16
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
