; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_crop = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.saa7134_fh = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_2__, %struct.v4l2_rect }
%struct.v4l2_rect = type { i64, i64, i64, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OVERLAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RESOURCE_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_crop*)* @saa7134_s_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_s_crop(%struct.file* %0, i8* %1, %struct.v4l2_crop* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_crop*, align 8
  %8 = alloca %struct.saa7134_fh*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_crop* %2, %struct.v4l2_crop** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %12, %struct.saa7134_fh** %8, align 8
  %13 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %14 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %13, i32 0, i32 0
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %14, align 8
  store %struct.saa7134_dev* %15, %struct.saa7134_dev** %9, align 8
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %17 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %16, i32 0, i32 1
  store %struct.v4l2_rect* %17, %struct.v4l2_rect** %10, align 8
  %18 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OVERLAY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %225

32:                                               ; preds = %23, %3
  %33 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %225

41:                                               ; preds = %32
  %42 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %225

50:                                               ; preds = %41
  %51 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %52 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %51, i32 0, i32 0
  %53 = load %struct.saa7134_dev*, %struct.saa7134_dev** %52, align 8
  %54 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %55 = call i64 @res_locked(%struct.saa7134_dev* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %225

60:                                               ; preds = %50
  %61 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %62 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %61, i32 0, i32 0
  %63 = load %struct.saa7134_dev*, %struct.saa7134_dev** %62, align 8
  %64 = load i32, i32* @RESOURCE_VIDEO, align 4
  %65 = call i64 @res_locked(%struct.saa7134_dev* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %225

70:                                               ; preds = %60
  %71 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %81 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i64 %82, i64* %85, align 8
  br label %86

86:                                               ; preds = %79, %70
  %87 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %92 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %95 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = icmp sgt i64 %90, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %86
  %100 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %101 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %104 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i64 %106, i64* %109, align 8
  br label %110

110:                                              ; preds = %99, %86
  %111 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %116 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %119 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %117, %121
  %123 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %124 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = icmp sgt i64 %114, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %110
  %129 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %130 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %131, %135
  %137 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %138 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  %141 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %142 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  br label %144

144:                                              ; preds = %128, %110
  %145 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %146 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %150 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %148, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %144
  %154 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %155 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %158 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  store i64 %156, i64* %159, align 8
  br label %160

160:                                              ; preds = %153, %144
  %161 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %162 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %166 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %169 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %167, %170
  %172 = icmp sgt i64 %164, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %160
  %174 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %175 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %178 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %176, %179
  %181 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %182 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 3
  store i64 %180, i64* %183, align 8
  br label %184

184:                                              ; preds = %173, %160
  %185 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %186 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %190 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %193 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %191, %195
  %197 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %198 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %196, %199
  %201 = icmp sgt i64 %188, %200
  br i1 %201, label %202, label %218

202:                                              ; preds = %184
  %203 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %204 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %207 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = sub nsw i64 %205, %209
  %211 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %212 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %210, %213
  %215 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %216 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  store i64 %214, i64* %217, align 8
  br label %218

218:                                              ; preds = %202, %184
  %219 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %220 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %219, i32 0, i32 0
  %221 = load %struct.v4l2_crop*, %struct.v4l2_crop** %7, align 8
  %222 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %221, i32 0, i32 1
  %223 = bitcast %struct.TYPE_2__* %220 to i8*
  %224 = bitcast %struct.TYPE_2__* %222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %223, i8* align 8 %224, i64 32, i1 false)
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %218, %67, %57, %47, %38, %29
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i64 @res_locked(%struct.saa7134_dev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
