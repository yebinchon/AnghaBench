; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_s_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_s_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (...)*, i32 (%struct.TYPE_13__*)* }
%struct.TYPE_13__ = type { i64, i64, i32, i64 }
%struct.file = type { i32 }
%struct.v4l2_crop = type { %struct.TYPE_13__ }
%struct.vpfe_device = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vpfe_s_crop\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot change crop when streaming is ON\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"doesn't support negative values for top & left\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Error in S_CROP params\0A\00", align 1
@ccdc_dev = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_crop*)* @vpfe_s_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_s_crop(%struct.file* %0, i8* %1, %struct.v4l2_crop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_crop*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_crop* %2, %struct.v4l2_crop** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vpfe_device* @video_drvdata(%struct.file* %10)
  store %struct.vpfe_device* %11, %struct.vpfe_device** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @debug, align 4
  %13 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %14 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %13, i32 0, i32 3
  %15 = call i32 @v4l2_dbg(i32 1, i32 %12, i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %17 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %22 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %21, i32 0, i32 3
  %23 = call i32 @v4l2_err(i32* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %166

26:                                               ; preds = %3
  %27 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %28 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock_interruptible(i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %166

34:                                               ; preds = %26
  %35 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40, %34
  %47 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %48 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %47, i32 0, i32 3
  %49 = call i32 @v4l2_err(i32* %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %161

52:                                               ; preds = %40
  %53 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 15
  %58 = and i32 %57, -16
  %59 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %65, %70
  %72 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %73 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %71, %75
  br i1 %76, label %92, label %77

77:                                               ; preds = %52
  %78 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %81, %85
  %87 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %88 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %86, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %77, %52
  %93 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %94 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %93, i32 0, i32 3
  %95 = call i32 @v4l2_err(i32* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %161

98:                                               ; preds = %77
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ccdc_dev, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %101, align 8
  %103 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %103, i32 0, i32 0
  %105 = call i32 %102(%struct.TYPE_13__* %104)
  %106 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %112 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i64 %110, i64* %115, align 8
  %116 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %121 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store i64 %119, i64* %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ccdc_dev, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32 (...)*, i32 (...)** %127, align 8
  %129 = call i32 (...) %128()
  %130 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %131 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  store i32 %129, i32* %134, align 8
  %135 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %136 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %143 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = mul nsw i64 %141, %147
  %149 = trunc i64 %148 to i32
  %150 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %151 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 3
  store i32 %149, i32* %154, align 4
  %155 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %156 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %155, i32 0, i32 1
  %157 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %158 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %157, i32 0, i32 0
  %159 = bitcast %struct.TYPE_13__* %156 to i8*
  %160 = bitcast %struct.TYPE_13__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 32, i1 false)
  br label %161

161:                                              ; preds = %98, %92, %46
  %162 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %163 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %161, %32, %20
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
