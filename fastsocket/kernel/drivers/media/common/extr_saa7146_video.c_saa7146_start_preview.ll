; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_saa7146_start_preview.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_saa7146_start_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.TYPE_10__, %struct.saa7146_dev* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.saa7146_fh*, i32, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"no overlay data available. try S_FMT first.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"streaming capture is active.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"overlay is already active.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"overlay is already active in another open.\0A\00", align 1
@RESOURCE_DMA1_HPS = common dso_local global i32 0, align 4
@RESOURCE_DMA2_CLP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"cannot get necessary overlay resources\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%dx%d+%d+%d %s field=%s\0A\00", align 1
@v4l2_field_names = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"enabling overlay failed: %d\0A\00", align 1
@STATUS_OVERLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_start_preview(%struct.saa7146_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146_fh*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_vv*, align 8
  %6 = alloca %struct.v4l2_format, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %3, align 8
  %9 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %10 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %9, i32 0, i32 1
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  store %struct.saa7146_dev* %11, %struct.saa7146_dev** %4, align 8
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %13 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %12, i32 0, i32 0
  %14 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  store %struct.saa7146_vv* %14, %struct.saa7146_vv** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %16 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %17 = bitcast %struct.saa7146_fh* %16 to i8*
  %18 = call i32 @DEB_EE(i8* %17)
  %19 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %20 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* null, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = call i32 @DEB_D(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %160

28:                                               ; preds = %1
  %29 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %30 = call i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i32 @DEB_D(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %160

36:                                               ; preds = %28
  %37 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %38 = call i64 @IS_OVERLAY_ACTIVE(%struct.saa7146_fh* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %42 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %41, i32 0, i32 0
  %43 = load %struct.saa7146_fh*, %struct.saa7146_fh** %42, align 8
  %44 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %45 = icmp eq %struct.saa7146_fh* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @DEB_D(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %160

48:                                               ; preds = %40
  %49 = call i32 @DEB_D(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %160

52:                                               ; preds = %36
  %53 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %54 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %55 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %56 = or i32 %54, %55
  %57 = call i64 @saa7146_res_get(%struct.saa7146_fh* %53, i32 %56)
  %58 = icmp eq i64 0, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = call i32 @DEB_D(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %160

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %67 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = bitcast %struct.TYPE_9__* %65 to i8*
  %70 = bitcast %struct.TYPE_9__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 24, i1 false)
  %71 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %72 = call i32 @vidioc_try_fmt_vid_overlay(i32* null, %struct.saa7146_fh* %71, %struct.v4l2_format* %6)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 0, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %63
  %76 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %77 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %76, i32 0, i32 0
  %78 = load %struct.saa7146_fh*, %struct.saa7146_fh** %77, align 8
  %79 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %80 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @saa7146_res_free(%struct.saa7146_fh* %78, i32 %81)
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %160

85:                                               ; preds = %63
  %86 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %87 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = bitcast %struct.TYPE_9__* %88 to i8*
  %92 = bitcast %struct.TYPE_9__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 24, i1 false)
  %93 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %94 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %93, i32 0, i32 0
  %95 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %96 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %95, i32 0, i32 3
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %96, align 8
  %97 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %98 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %104 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %110 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %116 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %122 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** @v4l2_field_names, align 8
  %127 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %128 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32, i32* %126, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = call i32 @DEB_D(i8* %135)
  %137 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %138 = call i32 @saa7146_enable_overlay(%struct.saa7146_fh* %137)
  store i32 %138, i32* %7, align 4
  %139 = icmp ne i32 0, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %85
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 @DEB_D(i8* %143)
  %145 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %146 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %145, i32 0, i32 0
  %147 = load %struct.saa7146_fh*, %struct.saa7146_fh** %146, align 8
  %148 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %149 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @saa7146_res_free(%struct.saa7146_fh* %147, i32 %150)
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %160

153:                                              ; preds = %85
  %154 = load i32, i32* @STATUS_OVERLAY, align 4
  %155 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %156 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %158 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %159 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %158, i32 0, i32 0
  store %struct.saa7146_fh* %157, %struct.saa7146_fh** %159, align 8
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %153, %140, %75, %59, %48, %46, %32, %24
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh*) #1

declare dso_local i64 @IS_OVERLAY_ACTIVE(%struct.saa7146_fh*) #1

declare dso_local i64 @saa7146_res_get(%struct.saa7146_fh*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vidioc_try_fmt_vid_overlay(i32*, %struct.saa7146_fh*, %struct.v4l2_format*) #1

declare dso_local i32 @saa7146_res_free(%struct.saa7146_fh*, i32) #1

declare dso_local i32 @saa7146_enable_overlay(%struct.saa7146_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
