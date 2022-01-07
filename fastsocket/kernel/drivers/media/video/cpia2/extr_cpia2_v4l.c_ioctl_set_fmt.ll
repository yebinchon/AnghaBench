; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_set_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, %struct.TYPE_14__*, %struct.TYPE_11__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.cpia2_fh = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i32 }

@V4L2_PRIORITY_RECORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Requested width = %d, height = %d\0A\00", align 1
@FRAME_READING = common dso_local global i64 0, align 8
@FRAME_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*, %struct.cpia2_fh*)* @ioctl_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_set_fmt(i8* %0, %struct.camera_data* %1, %struct.cpia2_fh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.camera_data*, align 8
  %7 = alloca %struct.cpia2_fh*, align 8
  %8 = alloca %struct.v4l2_format*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.camera_data* %1, %struct.camera_data** %6, align 8
  store %struct.cpia2_fh* %2, %struct.cpia2_fh** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.v4l2_format*
  store %struct.v4l2_format* %12, %struct.v4l2_format** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %15 = call i32 @ioctl_try_fmt(i8* %13, %struct.camera_data* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %151

20:                                               ; preds = %3
  %21 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %22 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %21, i32 0, i32 5
  %23 = load %struct.cpia2_fh*, %struct.cpia2_fh** %7, align 8
  %24 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %23, i32 0, i32 0
  %25 = load i32, i32* @V4L2_PRIORITY_RECORD, align 4
  %26 = call i32 @v4l2_prio_change(i32* %22, i32* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %151

31:                                               ; preds = %20
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %38 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %40 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %52)
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %60 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %31
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %71 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %64, %31
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %82 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %85 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %90 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i64 %88, i64* %91, align 8
  %92 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %93 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %98 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i64 %96, i64* %100, align 8
  %101 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %102 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %107 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i64 %105, i64* %109, align 8
  %110 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %111 = call i32 @cpia2_set_format(%struct.camera_data* %110)
  br label %112

112:                                              ; preds = %75, %64
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %147, %112
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %116 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %113
  %120 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %121 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %120, i32 0, i32 1
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @FRAME_READING, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %119
  %131 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @sync(%struct.camera_data* %131, i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %4, align 4
  br label %151

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %119
  %139 = load i64, i64* @FRAME_EMPTY, align 8
  %140 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %141 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %140, i32 0, i32 1
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  store i64 %139, i64* %146, align 8
  br label %147

147:                                              ; preds = %138
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %113

150:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %135, %29, %18
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @ioctl_try_fmt(i8*, %struct.camera_data*) #1

declare dso_local i32 @v4l2_prio_change(i32*, i32*, i32) #1

declare dso_local i32 @DBG(i8*, i64, i64) #1

declare dso_local i32 @cpia2_set_format(%struct.camera_data*) #1

declare dso_local i32 @sync(%struct.camera_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
