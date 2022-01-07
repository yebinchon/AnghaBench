; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_try_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_try_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i64, i32, i32 }
%struct.zoran_fh = type { %struct.zoran_jpg_settings, %struct.zoran* }
%struct.zoran_jpg_settings = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.zoran = type { i32 }

@V4L2_PIX_FMT_MJPEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BUZ_MAX_HEIGHT = common dso_local global i32 0, align 4
@BUZ_MAX_WIDTH = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_BT = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @zoran_try_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_try_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.zoran_fh*, align 8
  %9 = alloca %struct.zoran*, align 8
  %10 = alloca %struct.zoran_jpg_settings, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.zoran_fh*
  store %struct.zoran_fh* %13, %struct.zoran_fh** %8, align 8
  %14 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %15 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %14, i32 0, i32 1
  %16 = load %struct.zoran*, %struct.zoran** %15, align 8
  store %struct.zoran* %16, %struct.zoran** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_PIX_FMT_MJPEG, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %209

27:                                               ; preds = %3
  %28 = load %struct.zoran*, %struct.zoran** %9, align 8
  %29 = getelementptr inbounds %struct.zoran, %struct.zoran* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %32 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %31, i32 0, i32 0
  %33 = bitcast %struct.zoran_jpg_settings* %10 to i8*
  %34 = bitcast %struct.zoran_jpg_settings* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 48, i1 false)
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 2
  %41 = load i32, i32* @BUZ_MAX_HEIGHT, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %47

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 0
  store i32 2, i32* %46, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 8
  store i64 0, i64* %48, align 8
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %55 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 2
  %59 = icmp sle i32 %53, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 2
  store i32 2, i32* %61, align 8
  br label %64

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 2
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %71 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 4
  %75 = icmp sle i32 %69, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 4
  store i32 4, i32* %77, align 8
  br label %95

78:                                               ; preds = %64
  %79 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %85 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 2
  %89 = icmp sle i32 %83, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 4
  store i32 2, i32* %91, align 8
  br label %94

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 4
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %92, %90
  br label %95

95:                                               ; preds = %94, %76
  %96 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 5
  store i32 2, i32* %100, align 4
  br label %103

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 5
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load i32, i32* @BUZ_MAX_WIDTH, align 4
  %109 = icmp eq i32 %108, 720
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 8, i32 0
  %112 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 6
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* @BUZ_MAX_WIDTH, align 4
  %114 = icmp eq i32 %113, 720
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @BUZ_MAX_WIDTH, align 4
  br label %118

118:                                              ; preds = %116, %115
  %119 = phi i32 [ 704, %115 ], [ %117, %116 ]
  %120 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 3
  store i32 %119, i32* %120, align 4
  br label %125

121:                                              ; preds = %103
  %122 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 6
  store i32 0, i32* %122, align 8
  %123 = load i32, i32* @BUZ_MAX_WIDTH, align 4
  %124 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 3
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %121, %118
  %126 = load %struct.zoran*, %struct.zoran** %9, align 8
  %127 = call i32 @zoran_check_jpg_settings(%struct.zoran* %126, %struct.zoran_jpg_settings* %10, i32 1)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %204

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %133, %135
  %137 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %138 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  store i32 %136, i32* %140, align 4
  %141 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %142, 2
  %144 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %145, %147
  %149 = sdiv i32 %143, %148
  %150 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %151 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 8
  %154 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %10, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %173

157:                                              ; preds = %131
  %158 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %159 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  br label %167

165:                                              ; preds = %157
  %166 = load i32, i32* @V4L2_FIELD_SEQ_BT, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %169 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %170 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 6
  store i32 %168, i32* %172, align 4
  br label %189

173:                                              ; preds = %131
  %174 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %175 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.zoran_jpg_settings, %struct.zoran_jpg_settings* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* @V4L2_FIELD_TOP, align 4
  br label %183

181:                                              ; preds = %173
  %182 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  %185 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %186 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 6
  store i32 %184, i32* %188, align 4
  br label %189

189:                                              ; preds = %183, %167
  %190 = call i32 @zoran_v4l2_calc_bufsize(%struct.zoran_jpg_settings* %10)
  %191 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %192 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 5
  store i32 %190, i32* %194, align 8
  %195 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %196 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 4
  store i64 0, i64* %198, align 8
  %199 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %200 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %201 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 3
  store i32 %199, i32* %203, align 8
  br label %204

204:                                              ; preds = %189, %130
  %205 = load %struct.zoran*, %struct.zoran** %9, align 8
  %206 = getelementptr inbounds %struct.zoran, %struct.zoran* %205, i32 0, i32 0
  %207 = call i32 @mutex_unlock(i32* %206)
  %208 = load i32, i32* %11, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %204, %24
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @zoran_check_jpg_settings(%struct.zoran*, %struct.zoran_jpg_settings*, i32) #1

declare dso_local i32 @zoran_v4l2_calc_bufsize(%struct.zoran_jpg_settings*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
