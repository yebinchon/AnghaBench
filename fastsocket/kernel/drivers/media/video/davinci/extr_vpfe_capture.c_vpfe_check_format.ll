; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_check_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (i64*, i32)* }
%struct.vpfe_pixel_format = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.vpfe_device = type { i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32, i32 }

@ccdc_dev = common dso_local global %struct.TYPE_14__* null, align 8
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"width = %d, height = %d, bpp = %d\0A\00", align 1
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"adjusted width = %d, height = %d, bpp = %d, bytesperline = %d, sizeimage = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vpfe_pixel_format* (%struct.vpfe_device*, %struct.v4l2_pix_format*)* @vpfe_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vpfe_pixel_format* @vpfe_check_format(%struct.vpfe_device* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vpfe_pixel_format*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  store i64 1, i64* %5, align 8
  store i64 32, i64* %6, align 8
  %13 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.vpfe_pixel_format* @vpfe_lookup_pix_format(i64 %15)
  store %struct.vpfe_pixel_format* %16, %struct.vpfe_pixel_format** %9, align 8
  %17 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %18 = icmp eq %struct.vpfe_pixel_format* null, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.vpfe_pixel_format* @vpfe_lookup_pix_format(i64 %30)
  store %struct.vpfe_pixel_format* %31, %struct.vpfe_pixel_format** %9, align 8
  br label %32

32:                                               ; preds = %19, %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ccdc_dev, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64 (i64*, i32)*, i64 (i64*, i32)** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i64 %37(i64* %10, i32 %38)
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %43 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %33

52:                                               ; preds = %48, %33
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %57 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.vpfe_pixel_format* @vpfe_lookup_pix_format(i64 %66)
  store %struct.vpfe_pixel_format* %67, %struct.vpfe_pixel_format** %9, align 8
  br label %68

68:                                               ; preds = %55, %52
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %76 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %74, %68
  %84 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %85 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %128

94:                                               ; preds = %83
  %95 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %96 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %118 [
    i32 130, label %98
    i32 128, label %98
    i32 129, label %108
  ]

98:                                               ; preds = %94, %94
  %99 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %100 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %106 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %105, i32 0, i32 1
  store i32 129, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %98
  br label %127

108:                                              ; preds = %94
  %109 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %110 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %116 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %115, i32 0, i32 1
  store i32 130, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %108
  br label %127

118:                                              ; preds = %94
  %119 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %120 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %118, %117, %107
  br label %128

128:                                              ; preds = %127, %83
  %129 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %130 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 130
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 128
  br i1 %137, label %138, label %139

138:                                              ; preds = %133, %128
  store i64 2, i64* %5, align 8
  br label %139

139:                                              ; preds = %138, %133
  %140 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %141 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %7, align 8
  %144 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %145 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %8, align 8
  %148 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %149 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %6, align 8
  %152 = sdiv i64 %151, %150
  store i64 %152, i64* %6, align 8
  %153 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %154 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %153, i32 0, i32 0
  %155 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %156 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %159 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %162 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 (i32*, i8*, i32, i32, i32, ...) @v4l2_info(i32* %154, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %160, i32 %164)
  %166 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %167 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* %7, align 8
  %171 = call i8* @clamp(i32 %168, i64 %169, i64 %170)
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %174 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %176 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* %5, align 8
  %179 = load i64, i64* %8, align 8
  %180 = call i8* @clamp(i32 %177, i64 %178, i64 %179)
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %183 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %185 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 130
  br i1 %187, label %188, label %193

188:                                              ; preds = %139
  %189 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %190 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, -2
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %188, %139
  %194 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %195 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %199 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = mul nsw i64 %197, %200
  %202 = add nsw i64 %201, 31
  %203 = and i64 %202, -32
  %204 = trunc i64 %203 to i32
  %205 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %206 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %205, i32 0, i32 4
  store i32 %204, i32* %206, align 4
  %207 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %208 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %231

212:                                              ; preds = %193
  %213 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %214 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %217 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = mul nsw i32 %215, %218
  %220 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %221 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %224 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 %222, %225
  %227 = ashr i32 %226, 1
  %228 = add nsw i32 %219, %227
  %229 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %230 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 8
  br label %241

231:                                              ; preds = %193
  %232 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %233 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %236 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = mul nsw i32 %234, %237
  %239 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %240 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 8
  br label %241

241:                                              ; preds = %231, %212
  %242 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %243 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %242, i32 0, i32 0
  %244 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %245 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %248 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %251 = getelementptr inbounds %struct.vpfe_pixel_format, %struct.vpfe_pixel_format* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %255 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %258 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (i32*, i8*, i32, i32, i32, ...) @v4l2_info(i32* %243, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %246, i32 %249, i32 %253, i32 %256, i32 %259)
  %261 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  ret %struct.vpfe_pixel_format* %261
}

declare dso_local %struct.vpfe_pixel_format* @vpfe_lookup_pix_format(i64) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32, i32, i32, ...) #1

declare dso_local i8* @clamp(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
