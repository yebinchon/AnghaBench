; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.uvc_frame*, %struct.uvc_format*, %struct.uvc_format*, i32, i32, i32, %struct.uvc_streaming_control }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.uvc_frame = type { i64 }
%struct.uvc_format = type { i64, i32, %struct.uvc_frame* }
%struct.uvc_streaming_control = type { i64, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No supported video formats found.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@uvc_no_drop_param = common dso_local global i32 0, align 4
@UVC_GET_DEF = common dso_local global i32 0, align 4
@UVC_GET_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"No frame descriptor found for the default format.\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@UVC_QUIRK_BUILTIN_ISIGHT = common dso_local global i32 0, align 4
@uvc_video_decode_isight = common dso_local global i32 0, align 4
@uvc_video_decode_isoc = common dso_local global i32 0, align 4
@uvc_video_decode_bulk = common dso_local global i32 0, align 4
@uvc_video_encode_bulk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Isochronous endpoints are not supported for video output devices.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_video_init(%struct.uvc_streaming* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvc_streaming*, align 8
  %4 = alloca %struct.uvc_streaming_control*, align 8
  %5 = alloca %struct.uvc_format*, align 8
  %6 = alloca %struct.uvc_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %3, align 8
  %9 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %10 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %9, i32 0, i32 11
  store %struct.uvc_streaming_control* %10, %struct.uvc_streaming_control** %4, align 8
  store %struct.uvc_format* null, %struct.uvc_format** %5, align 8
  store %struct.uvc_frame* null, %struct.uvc_frame** %6, align 8
  %11 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %12 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @KERN_INFO, align 4
  %17 = call i32 @uvc_printk(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %195

20:                                               ; preds = %1
  %21 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %22 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %21, i32 0, i32 10
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  %24 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %25 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %24, i32 0, i32 9
  %26 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @uvc_no_drop_param, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @uvc_queue_init(i32* %25, i64 %28, i32 %32)
  %34 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %35 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %40 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @usb_set_interface(i32 %38, i32 %41, i32 0)
  %43 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %44 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %45 = load i32, i32* @UVC_GET_DEF, align 4
  %46 = call i32 @uvc_get_video_ctrl(%struct.uvc_streaming* %43, %struct.uvc_streaming_control* %44, i32 1, i32 %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %20
  %49 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %50 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %51 = call i32 @uvc_set_video_ctrl(%struct.uvc_streaming* %49, %struct.uvc_streaming_control* %50, i32 1)
  br label %52

52:                                               ; preds = %48, %20
  %53 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %54 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %55 = load i32, i32* @UVC_GET_CUR, align 4
  %56 = call i32 @uvc_get_video_ctrl(%struct.uvc_streaming* %53, %struct.uvc_streaming_control* %54, i32 1, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %195

61:                                               ; preds = %52
  %62 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %63 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %85, %61
  %66 = load i32, i32* %7, align 4
  %67 = icmp ugt i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %70 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %69, i32 0, i32 7
  %71 = load %struct.uvc_format*, %struct.uvc_format** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sub i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %71, i64 %74
  store %struct.uvc_format* %75, %struct.uvc_format** %5, align 8
  %76 = load %struct.uvc_format*, %struct.uvc_format** %5, align 8
  %77 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %80 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %88

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, -1
  store i32 %87, i32* %7, align 4
  br label %65

88:                                               ; preds = %83, %65
  %89 = load %struct.uvc_format*, %struct.uvc_format** %5, align 8
  %90 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* @KERN_INFO, align 4
  %95 = call i32 @uvc_printk(i32 %94, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %195

98:                                               ; preds = %88
  %99 = load %struct.uvc_format*, %struct.uvc_format** %5, align 8
  %100 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %122, %98
  %103 = load i32, i32* %7, align 4
  %104 = icmp ugt i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %102
  %106 = load %struct.uvc_format*, %struct.uvc_format** %5, align 8
  %107 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %106, i32 0, i32 2
  %108 = load %struct.uvc_frame*, %struct.uvc_frame** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sub i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %108, i64 %111
  store %struct.uvc_frame* %112, %struct.uvc_frame** %6, align 8
  %113 = load %struct.uvc_frame*, %struct.uvc_frame** %6, align 8
  %114 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %117 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  br label %125

121:                                              ; preds = %105
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, -1
  store i32 %124, i32* %7, align 4
  br label %102

125:                                              ; preds = %120, %102
  %126 = load %struct.uvc_format*, %struct.uvc_format** %5, align 8
  %127 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %130 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.uvc_frame*, %struct.uvc_frame** %6, align 8
  %132 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %4, align 8
  %135 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.uvc_format*, %struct.uvc_format** %5, align 8
  %137 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %138 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %137, i32 0, i32 6
  store %struct.uvc_format* %136, %struct.uvc_format** %138, align 8
  %139 = load %struct.uvc_frame*, %struct.uvc_frame** %6, align 8
  %140 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %141 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %140, i32 0, i32 5
  store %struct.uvc_frame* %139, %struct.uvc_frame** %141, align 8
  %142 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %143 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %177

147:                                              ; preds = %125
  %148 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %149 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %148, i32 0, i32 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @UVC_QUIRK_BUILTIN_ISIGHT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load i32, i32* @uvc_video_decode_isight, align 4
  %158 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %159 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %176

160:                                              ; preds = %147
  %161 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %162 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %161, i32 0, i32 3
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load i32, i32* @uvc_video_decode_isoc, align 4
  %169 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %170 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  br label %175

171:                                              ; preds = %160
  %172 = load i32, i32* @uvc_video_decode_bulk, align 4
  %173 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %174 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %167
  br label %176

176:                                              ; preds = %175, %156
  br label %194

177:                                              ; preds = %125
  %178 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %179 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %178, i32 0, i32 3
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i32, i32* @uvc_video_encode_bulk, align 4
  %186 = load %struct.uvc_streaming*, %struct.uvc_streaming** %3, align 8
  %187 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  br label %193

188:                                              ; preds = %177
  %189 = load i32, i32* @KERN_INFO, align 4
  %190 = call i32 @uvc_printk(i32 %189, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %2, align 4
  br label %195

193:                                              ; preds = %184
  br label %194

194:                                              ; preds = %193, %176
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %188, %93, %59, %15
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @uvc_printk(i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @uvc_queue_init(i32*, i64, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @uvc_get_video_ctrl(%struct.uvc_streaming*, %struct.uvc_streaming_control*, i32, i32) #1

declare dso_local i32 @uvc_set_video_ctrl(%struct.uvc_streaming*, %struct.uvc_streaming_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
