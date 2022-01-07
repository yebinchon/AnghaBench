; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.zoran_fh = type { i64, %struct.TYPE_6__, %struct.zoran* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.zoran = type { i32 }

@ZORAN_MAP_MODE_RAW = common dso_local global i64 0, align 8
@BUZ_MAX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @zoran_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.zoran_fh*, align 8
  %9 = alloca %struct.zoran*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.zoran_fh*
  store %struct.zoran_fh* %11, %struct.zoran_fh** %8, align 8
  %12 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %13 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %12, i32 0, i32 2
  %14 = load %struct.zoran*, %struct.zoran** %13, align 8
  store %struct.zoran* %14, %struct.zoran** %9, align 8
  %15 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %16 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ZORAN_MAP_MODE_RAW, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = call i32 @zoran_g_fmt_vid_out(%struct.file* %21, %struct.zoran_fh* %22, %struct.v4l2_format* %23)
  store i32 %24, i32* %4, align 4
  br label %109

25:                                               ; preds = %3
  %26 = load %struct.zoran*, %struct.zoran** %9, align 8
  %27 = getelementptr inbounds %struct.zoran, %struct.zoran* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %30 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  store i32 %32, i32* %36, align 4
  %37 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %38 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %46 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %50 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %48, %52
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %59 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 5
  store i32 %63, i32* %67, align 4
  %68 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %69 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  store i32 %73, i32* %77, align 4
  %78 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %79 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @BUZ_MAX_HEIGHT, align 4
  %87 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %88 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %90, 2
  %92 = icmp slt i32 %86, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %25
  %94 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  store i32 %94, i32* %98, align 4
  br label %105

99:                                               ; preds = %25
  %100 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %101 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.zoran*, %struct.zoran** %9, align 8
  %107 = getelementptr inbounds %struct.zoran, %struct.zoran* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %20
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @zoran_g_fmt_vid_out(%struct.file*, %struct.zoran_fh*, %struct.v4l2_format*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
