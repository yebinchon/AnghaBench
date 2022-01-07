; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_prep_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_prep_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i64, i32 }
%struct.ivtv = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.ivtv_stream* }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i64* }
%struct.ivtv_stream = type { i32, i8*, %struct.TYPE_10__*, %struct.ivtv* }
%struct.TYPE_10__ = type { i32, i32, i32 (%struct.TYPE_10__*)*, i32, %struct.TYPE_9__*, i32 }
%struct.video_device_shadow = type { i32 }

@ivtv_stream_info = common dso_local global %struct.TYPE_11__* null, align 8
@ivtv_first_minor = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_RAD = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@PCI_DMA_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Disabled %s device\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Couldn't allocate v4l2 video_device for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Couldn't allocate v4l2 video_device_shadow for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i32)* @ivtv_prep_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_prep_dev(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.video_device_shadow*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 4
  %12 = load %struct.ivtv_stream*, %struct.ivtv_stream** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %12, i64 %14
  store %struct.ivtv_stream* %15, %struct.ivtv_stream** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ivtv_stream_info, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ivtv_first_minor, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %30 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %29, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %30, align 8
  %31 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %32 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %33 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %32, i32 0, i32 3
  store %struct.ivtv* %31, %struct.ivtv** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %36 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ivtv_stream_info, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %44 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IVTV_ENC_STREAM_TYPE_RAD, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %2
  %49 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %185

56:                                               ; preds = %48, %2
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @IVTV_DEC_STREAM_TYPE_MPG, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %62 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %185

68:                                               ; preds = %60, %56
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ivtv_stream_info, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PCI_DMA_NONE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %68
  %78 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %79 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %77
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ivtv_stream_info, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @IVTV_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %93)
  store i32 0, i32* %3, align 4
  br label %185

95:                                               ; preds = %77, %68
  %96 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @ivtv_stream_init(%struct.ivtv* %96, i32 %97)
  %99 = call %struct.TYPE_10__* (...) @video_device_alloc()
  %100 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %101 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %100, i32 0, i32 2
  store %struct.TYPE_10__* %99, %struct.TYPE_10__** %101, align 8
  %102 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %103 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = icmp eq %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %95
  %107 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %108 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %109)
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %185

113:                                              ; preds = %95
  %114 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %115 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %114, i32 0, i32 2
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = call %struct.video_device_shadow* @video_device_shadow_get(%struct.TYPE_10__* %116)
  store %struct.video_device_shadow* %117, %struct.video_device_shadow** %9, align 8
  %118 = load %struct.video_device_shadow*, %struct.video_device_shadow** %9, align 8
  %119 = icmp eq %struct.video_device_shadow* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %113
  %121 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %122 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %123)
  %125 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %126 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = call i32 @video_device_release(%struct.TYPE_10__* %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %185

131:                                              ; preds = %113
  %132 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %133 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %132, i32 0, i32 2
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %138 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %142 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @snprintf(i32 %136, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %140, i8* %143)
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %147 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %146, i32 0, i32 2
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32 %145, i32* %149, align 8
  %150 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %151 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %150, i32 0, i32 2
  %152 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %153 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %152, i32 0, i32 2
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  store %struct.TYPE_9__* %151, %struct.TYPE_9__** %155, align 8
  %156 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %157 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.video_device_shadow*, %struct.video_device_shadow** %9, align 8
  %161 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ivtv_stream_info, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %169 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %168, i32 0, i32 2
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  store i32 %167, i32* %171, align 8
  %172 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %173 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %172, i32 0, i32 2
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  store i32 (%struct.TYPE_10__*)* @video_device_release, i32 (%struct.TYPE_10__*)** %175, align 8
  %176 = load i32, i32* @V4L2_STD_ALL, align 4
  %177 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %178 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %177, i32 0, i32 2
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  store i32 %176, i32* %180, align 4
  %181 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %182 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %181, i32 0, i32 2
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = call i32 @ivtv_set_funcs(%struct.TYPE_10__* %183)
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %131, %120, %106, %87, %67, %55
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @IVTV_INFO(i8*, i8*) #1

declare dso_local i32 @ivtv_stream_init(%struct.ivtv*, i32) #1

declare dso_local %struct.TYPE_10__* @video_device_alloc(...) #1

declare dso_local i32 @IVTV_ERR(i8*, i8*) #1

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(%struct.TYPE_10__*) #1

declare dso_local i32 @video_device_release(%struct.TYPE_10__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @ivtv_set_funcs(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
