; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_btcx-risc.c_btcx_sort_clips.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_btcx-risc.c_btcx_sort_clips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_clip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btcx_sort_clips(%struct.v4l2_clip* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_clip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_clip, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_clip* %0, %struct.v4l2_clip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %79

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sub i32 %13, 2
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %76, %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %68, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %19
  %24 = load %struct.v4l2_clip*, %struct.v4l2_clip** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %24, i64 %26
  %28 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_clip*, %struct.v4l2_clip** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %31, i64 %34
  %36 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %30, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %23
  %41 = load %struct.v4l2_clip*, %struct.v4l2_clip** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %41, i64 %43
  %45 = bitcast %struct.v4l2_clip* %5 to i8*
  %46 = bitcast %struct.v4l2_clip* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = load %struct.v4l2_clip*, %struct.v4l2_clip** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %47, i64 %49
  %51 = load %struct.v4l2_clip*, %struct.v4l2_clip** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %51, i64 %54
  %56 = bitcast %struct.v4l2_clip* %50 to i8*
  %57 = bitcast %struct.v4l2_clip* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = load %struct.v4l2_clip*, %struct.v4l2_clip** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %58, i64 %61
  %63 = bitcast %struct.v4l2_clip* %62 to i8*
  %64 = bitcast %struct.v4l2_clip* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %40, %23
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %19

71:                                               ; preds = %19
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 0, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %79

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %6, align 4
  br label %15

79:                                               ; preds = %11, %74, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
