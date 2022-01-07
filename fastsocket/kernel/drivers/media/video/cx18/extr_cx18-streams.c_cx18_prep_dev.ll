; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_prep_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_prep_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i64 }
%struct.cx18 = type { i32, i32, i64*, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.cx18_stream* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.cx18_stream = type { i32, i8*, %struct.TYPE_8__*, i64, i32*, %struct.cx18* }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, %struct.TYPE_7__*, i32 }

@cx18_stream_info = common dso_local global %struct.TYPE_9__* null, align 8
@cx18_first_minor = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_RAD = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_VBI = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_SLICED_VBI_CAPTURE = common dso_local global i32 0, align 4
@PCI_DMA_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Disabled %s device\0A\00", align 1
@CX18_ENC_STREAM_TYPE_TS = common dso_local global i32 0, align 4
@CX18_HW_DVB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Couldn't allocate cx18_dvb structure for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Couldn't allocate v4l2 video_device for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@cx18_v4l2_enc_fops = common dso_local global i32 0, align 4
@video_device_release = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, i32)* @cx18_prep_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_prep_dev(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx18_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cx18*, %struct.cx18** %4, align 8
  %11 = getelementptr inbounds %struct.cx18, %struct.cx18* %10, i32 0, i32 5
  %12 = load %struct.cx18_stream*, %struct.cx18_stream** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %12, i64 %14
  store %struct.cx18_stream* %15, %struct.cx18_stream** %6, align 8
  %16 = load %struct.cx18*, %struct.cx18** %4, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cx18_stream_info, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.cx18*, %struct.cx18** %4, align 8
  %26 = getelementptr inbounds %struct.cx18, %struct.cx18* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @cx18_first_minor, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %33 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %32, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %33, align 8
  %34 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %35 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  %36 = load %struct.cx18*, %struct.cx18** %4, align 8
  %37 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %38 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %37, i32 0, i32 5
  store %struct.cx18* %36, %struct.cx18** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %41 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cx18_stream_info, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %49 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @CX18_ENC_STREAM_TYPE_RAD, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %2
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %196

59:                                               ; preds = %53, %2
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @CX18_ENC_STREAM_TYPE_VBI, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %66 = load i32, i32* @V4L2_CAP_SLICED_VBI_CAPTURE, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %196

71:                                               ; preds = %63, %59
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cx18_stream_info, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI_DMA_NONE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %71
  %81 = load %struct.cx18*, %struct.cx18** %4, align 8
  %82 = getelementptr inbounds %struct.cx18, %struct.cx18* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cx18_stream_info, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @CX18_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %95)
  store i32 0, i32* %3, align 4
  br label %196

97:                                               ; preds = %80, %71
  %98 = load %struct.cx18*, %struct.cx18** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @cx18_stream_init(%struct.cx18* %98, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @CX18_ENC_STREAM_TYPE_TS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %134

104:                                              ; preds = %97
  %105 = load %struct.cx18*, %struct.cx18** %4, align 8
  %106 = getelementptr inbounds %struct.cx18, %struct.cx18* %105, i32 0, i32 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CX18_HW_DVB, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %104
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i32* @kzalloc(i32 4, i32 %114)
  %116 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %117 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %116, i32 0, i32 4
  store i32* %115, i32** %117, align 8
  %118 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %119 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %113
  %123 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %124 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @CX18_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %125)
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %196

129:                                              ; preds = %113
  br label %133

130:                                              ; preds = %104
  %131 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %132 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %129
  br label %134

134:                                              ; preds = %133, %97
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %196

138:                                              ; preds = %134
  %139 = call %struct.TYPE_8__* (...) @video_device_alloc()
  %140 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %141 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %140, i32 0, i32 2
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %141, align 8
  %142 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %143 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %142, i32 0, i32 2
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = icmp eq %struct.TYPE_8__* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %148 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @CX18_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %149)
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %196

153:                                              ; preds = %138
  %154 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %155 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %154, i32 0, i32 2
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.cx18*, %struct.cx18** %4, align 8
  %160 = getelementptr inbounds %struct.cx18, %struct.cx18* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %164 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @snprintf(i32 %158, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %162, i8* %165)
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %169 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %168, i32 0, i32 2
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32 %167, i32* %171, align 8
  %172 = load %struct.cx18*, %struct.cx18** %4, align 8
  %173 = getelementptr inbounds %struct.cx18, %struct.cx18* %172, i32 0, i32 3
  %174 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %175 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %174, i32 0, i32 2
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 4
  store %struct.TYPE_7__* %173, %struct.TYPE_7__** %177, align 8
  %178 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %179 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %178, i32 0, i32 2
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  store i32* @cx18_v4l2_enc_fops, i32** %181, align 8
  %182 = load i32, i32* @video_device_release, align 4
  %183 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %184 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %183, i32 0, i32 2
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  store i32 %182, i32* %186, align 8
  %187 = load i32, i32* @V4L2_STD_ALL, align 4
  %188 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %189 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %188, i32 0, i32 2
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  store i32 %187, i32* %191, align 4
  %192 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %193 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %192, i32 0, i32 2
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = call i32 @cx18_set_funcs(%struct.TYPE_8__* %194)
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %153, %146, %137, %122, %89, %70, %58
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @CX18_INFO(i8*, i8*) #1

declare dso_local i32 @cx18_stream_init(%struct.cx18*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @CX18_ERR(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @video_device_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @cx18_set_funcs(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
