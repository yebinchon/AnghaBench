; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_frame_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_frame_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32, i32, i64, i32, i32, i32, %struct.gspca_frame*, %struct.file*, %struct.TYPE_6__ }
%struct.gspca_frame = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__, i64, i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"frame alloc frsz: %d\00", align 1
@GSPCA_MAX_FRAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"frame alloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.file*, i32, i32)* @frame_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frame_alloc(%struct.gspca_dev* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gspca_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @D_STREAM, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @PDEBUG(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @PAGE_ALIGN(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @GSPCA_MAX_FRAMES, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @GSPCA_MAX_FRAMES, align 4
  %35 = sub i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul i32 %37, %38
  %40 = call i32 @vmalloc_32(i32 %39)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %44 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = call i32 @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %130

51:                                               ; preds = %36
  %52 = load %struct.file*, %struct.file** %7, align 8
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %54 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %53, i32 0, i32 9
  store %struct.file* %52, %struct.file** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %63 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %118, %51
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %121

68:                                               ; preds = %64
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 8
  %71 = load %struct.gspca_frame*, %struct.gspca_frame** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %71, i64 %73
  store %struct.gspca_frame* %74, %struct.gspca_frame** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.gspca_frame*, %struct.gspca_frame** %10, align 8
  %77 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %80 = load %struct.gspca_frame*, %struct.gspca_frame** %10, align 8
  %81 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 7
  store i32 %79, i32* %82, align 8
  %83 = load %struct.gspca_frame*, %struct.gspca_frame** %10, align 8
  %84 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %87 = load %struct.gspca_frame*, %struct.gspca_frame** %10, align 8
  %88 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.gspca_frame*, %struct.gspca_frame** %10, align 8
  %92 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.gspca_frame*, %struct.gspca_frame** %10, align 8
  %96 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.gspca_frame*, %struct.gspca_frame** %10, align 8
  %99 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %102 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = mul i32 %104, %105
  %107 = add i32 %103, %106
  %108 = zext i32 %107 to i64
  %109 = load %struct.gspca_frame*, %struct.gspca_frame** %10, align 8
  %110 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = mul i32 %111, %112
  %114 = load %struct.gspca_frame*, %struct.gspca_frame** %10, align 8
  %115 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %68
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %64

121:                                              ; preds = %64
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %123 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %122, i32 0, i32 6
  %124 = call i32 @atomic_set(i32* %123, i32 0)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %126 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %125, i32 0, i32 5
  %127 = call i32 @atomic_set(i32* %126, i32 0)
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %129 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %128, i32 0, i32 4
  store i64 0, i64* %129, align 8
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %121, %47
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @vmalloc_32(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
