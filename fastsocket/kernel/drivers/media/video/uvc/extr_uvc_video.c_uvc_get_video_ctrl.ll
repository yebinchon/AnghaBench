; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_get_video_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_get_video_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i8* }
%struct.uvc_streaming_control = type { i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i64, i64, i8* }

@UVC_QUIRK_PROBE_DEF = common dso_local global i32 0, align 4
@UVC_GET_DEF = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_VS_PROBE_CONTROL = common dso_local global i32 0, align 4
@UVC_VS_COMMIT_CONTROL = common dso_local global i32 0, align 4
@uvc_timeout_param = common dso_local global i32 0, align 4
@UVC_GET_MIN = common dso_local global i64 0, align 8
@UVC_GET_MAX = common dso_local global i64 0, align 8
@UVC_WARN_MINMAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"UVC non compliance - GET_MIN/MAX(PROBE) incorrectly supported. Enabling workaround.\0A\00", align 1
@UVC_WARN_PROBE_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed to query (%u) UVC %s control : %d (exp. %u).\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.uvc_streaming_control*, i32, i64)* @uvc_get_video_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_get_video_ctrl(%struct.uvc_streaming* %0, %struct.uvc_streaming_control* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_streaming*, align 8
  %7 = alloca %struct.uvc_streaming_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %6, align 8
  store %struct.uvc_streaming_control* %1, %struct.uvc_streaming_control** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %14 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 272
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 34, i32 26
  store i32 %20, i32* %11, align 4
  %21 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %22 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UVC_QUIRK_PROBE_DEF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @UVC_GET_DEF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %240

36:                                               ; preds = %29, %4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i64* @kmalloc(i32 %37, i32 %38)
  store i64* %39, i64** %10, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = icmp eq i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %240

45:                                               ; preds = %36
  %46 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %47 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %51 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @UVC_VS_PROBE_CONTROL, align 4
  br label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @UVC_VS_COMMIT_CONTROL, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load i64*, i64** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @uvc_timeout_param, align 4
  %64 = call i32 @__uvc_query_ctrl(%struct.TYPE_3__* %48, i64 %49, i32 0, i32 %52, i32 %60, i64* %61, i32 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @UVC_GET_MIN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @UVC_GET_MAX, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68, %59
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %77 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* @UVC_WARN_MINMAX, align 4
  %80 = call i32 @uvc_warn_once(%struct.TYPE_3__* %78, i32 %79, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %82 = call i32 @memset(%struct.uvc_streaming_control* %81, i32 0, i32 128)
  %83 = load i64*, i64** %10, align 8
  %84 = bitcast i64* %83 to i32*
  %85 = call i8* @le16_to_cpup(i32* %84)
  %86 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %87 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %86, i32 0, i32 9
  store i8* %85, i8** %87, align 8
  store i32 0, i32* %12, align 4
  br label %236

88:                                               ; preds = %72, %68
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @UVC_GET_DEF, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %101 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* @UVC_WARN_PROBE_DEF, align 4
  %104 = call i32 @uvc_warn_once(%struct.TYPE_3__* %102, i32 %103, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %12, align 4
  br label %236

107:                                              ; preds = %95, %92, %88
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load i32, i32* @KERN_ERR, align 4
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @uvc_printk(i32 %112, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %113, i8* %117, i32 %118, i32 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %12, align 4
  br label %236

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  %126 = load i64*, i64** %10, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  %128 = bitcast i64* %127 to i32*
  %129 = call i8* @le16_to_cpup(i32* %128)
  %130 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %131 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %130, i32 0, i32 15
  store i8* %129, i8** %131, align 8
  %132 = load i64*, i64** %10, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %136 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %135, i32 0, i32 14
  store i64 %134, i64* %136, align 8
  %137 = load i64*, i64** %10, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %141 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %140, i32 0, i32 13
  store i64 %139, i64* %141, align 8
  %142 = load i64*, i64** %10, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 4
  %144 = bitcast i64* %143 to i32*
  %145 = call i32 @le32_to_cpup(i32* %144)
  %146 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %147 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %146, i32 0, i32 12
  store i32 %145, i32* %147, align 8
  %148 = load i64*, i64** %10, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 8
  %150 = bitcast i64* %149 to i32*
  %151 = call i8* @le16_to_cpup(i32* %150)
  %152 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %153 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %152, i32 0, i32 11
  store i8* %151, i8** %153, align 8
  %154 = load i64*, i64** %10, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 10
  %156 = bitcast i64* %155 to i32*
  %157 = call i8* @le16_to_cpup(i32* %156)
  %158 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %159 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %158, i32 0, i32 10
  store i8* %157, i8** %159, align 8
  %160 = load i64*, i64** %10, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 12
  %162 = bitcast i64* %161 to i32*
  %163 = call i8* @le16_to_cpup(i32* %162)
  %164 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %165 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %164, i32 0, i32 9
  store i8* %163, i8** %165, align 8
  %166 = load i64*, i64** %10, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 14
  %168 = bitcast i64* %167 to i32*
  %169 = call i8* @le16_to_cpup(i32* %168)
  %170 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %171 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %170, i32 0, i32 8
  store i8* %169, i8** %171, align 8
  %172 = load i64*, i64** %10, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 16
  %174 = bitcast i64* %173 to i32*
  %175 = call i8* @le16_to_cpup(i32* %174)
  %176 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %177 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %176, i32 0, i32 7
  store i8* %175, i8** %177, align 8
  %178 = load i64*, i64** %10, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 18
  %180 = call i8* @get_unaligned_le32(i64* %179)
  %181 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %182 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %181, i32 0, i32 6
  store i8* %180, i8** %182, align 8
  %183 = load i64*, i64** %10, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 22
  %185 = call i8* @get_unaligned_le32(i64* %184)
  %186 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %187 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %186, i32 0, i32 5
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* %11, align 4
  %189 = icmp eq i32 %188, 34
  br i1 %189, label %190, label %216

190:                                              ; preds = %125
  %191 = load i64*, i64** %10, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 26
  %193 = call i8* @get_unaligned_le32(i64* %192)
  %194 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %195 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %194, i32 0, i32 4
  store i8* %193, i8** %195, align 8
  %196 = load i64*, i64** %10, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 30
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %200 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %199, i32 0, i32 3
  store i64 %198, i64* %200, align 8
  %201 = load i64*, i64** %10, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 31
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %205 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %204, i32 0, i32 2
  store i64 %203, i64* %205, align 8
  %206 = load i64*, i64** %10, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 32
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %210 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %209, i32 0, i32 1
  store i64 %208, i64* %210, align 8
  %211 = load i64*, i64** %10, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 33
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %215 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %214, i32 0, i32 0
  store i64 %213, i64* %215, align 8
  br label %232

216:                                              ; preds = %125
  %217 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %218 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %217, i32 0, i32 0
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %223 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %222, i32 0, i32 4
  store i8* %221, i8** %223, align 8
  %224 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %225 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %224, i32 0, i32 3
  store i64 0, i64* %225, align 8
  %226 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %227 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %226, i32 0, i32 2
  store i64 0, i64* %227, align 8
  %228 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %229 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %228, i32 0, i32 1
  store i64 0, i64* %229, align 8
  %230 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %231 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %230, i32 0, i32 0
  store i64 0, i64* %231, align 8
  br label %232

232:                                              ; preds = %216, %190
  %233 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %234 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %7, align 8
  %235 = call i32 @uvc_fixup_video_ctrl(%struct.uvc_streaming* %233, %struct.uvc_streaming_control* %234)
  store i32 0, i32* %12, align 4
  br label %236

236:                                              ; preds = %232, %111, %99, %75
  %237 = load i64*, i64** %10, align 8
  %238 = call i32 @kfree(i64* %237)
  %239 = load i32, i32* %12, align 4
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %236, %42, %33
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @__uvc_query_ctrl(%struct.TYPE_3__*, i64, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @uvc_warn_once(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @memset(%struct.uvc_streaming_control*, i32, i32) #1

declare dso_local i8* @le16_to_cpup(i32*) #1

declare dso_local i32 @uvc_printk(i32, i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local i8* @get_unaligned_le32(i64*) #1

declare dso_local i32 @uvc_fixup_video_ctrl(%struct.uvc_streaming*, %struct.uvc_streaming_control*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
