; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_try_fmt_vid_overlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_try_fmt_vid_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.zoran_fh = type { %struct.zoran* }
%struct.zoran = type { i32 }

@BUZ_MAX_WIDTH = common dso_local global i64 0, align 8
@BUZ_MIN_WIDTH = common dso_local global i64 0, align 8
@BUZ_MAX_HEIGHT = common dso_local global i64 0, align 8
@BUZ_MIN_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @zoran_try_fmt_vid_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_try_fmt_vid_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.zoran_fh*, align 8
  %8 = alloca %struct.zoran*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.zoran_fh*
  store %struct.zoran_fh* %10, %struct.zoran_fh** %7, align 8
  %11 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %12 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %11, i32 0, i32 0
  %13 = load %struct.zoran*, %struct.zoran** %12, align 8
  store %struct.zoran* %13, %struct.zoran** %8, align 8
  %14 = load %struct.zoran*, %struct.zoran** %8, align 8
  %15 = getelementptr inbounds %struct.zoran, %struct.zoran* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BUZ_MAX_WIDTH, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i64, i64* @BUZ_MAX_WIDTH, align 8
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %26, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %3
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BUZ_MIN_WIDTH, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i64, i64* @BUZ_MIN_WIDTH, align 8
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %42, i64* %47, align 8
  br label %48

48:                                               ; preds = %41, %32
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BUZ_MAX_HEIGHT, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load i64, i64* @BUZ_MAX_HEIGHT, align 8
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i64 %58, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %48
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BUZ_MIN_HEIGHT, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load i64, i64* @BUZ_MIN_HEIGHT, align 8
  %75 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i64 %74, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %64
  %81 = load %struct.zoran*, %struct.zoran** %8, align 8
  %82 = getelementptr inbounds %struct.zoran, %struct.zoran* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
