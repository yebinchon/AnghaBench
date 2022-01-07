; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_limit_scaled_size_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_limit_scaled_size_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i64, i32 }
%struct.bttv_fh = type { i64, %struct.bttv* }
%struct.bttv = type { i64, i64, %struct.bttv_crop* }
%struct.bttv_crop = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@bttv_tvnorms = common dso_local global %struct.TYPE_6__* null, align 8
@VIDEO_RESOURCES = common dso_local global i32 0, align 4
@MAX_HACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv_fh*, i32*, i32*, i32, i32, i32, i32, i32)* @limit_scaled_size_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @limit_scaled_size_lock(%struct.bttv_fh* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.bttv_fh*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bttv*, align 8
  %18 = alloca %struct.v4l2_rect*, align 8
  %19 = alloca %struct.bttv_crop*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.bttv_fh* %0, %struct.bttv_fh** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load %struct.bttv_fh*, %struct.bttv_fh** %9, align 8
  %26 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %25, i32 0, i32 1
  %27 = load %struct.bttv*, %struct.bttv** %26, align 8
  store %struct.bttv* %27, %struct.bttv** %17, align 8
  %28 = load i32, i32* %13, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sub i32 0, %32
  %34 = icmp uge i32 %31, %33
  br label %35

35:                                               ; preds = %30, %8
  %36 = phi i1 [ true, %8 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bttv_tvnorms, align 8
  %40 = load %struct.bttv*, %struct.bttv** %17, align 8
  %41 = getelementptr inbounds %struct.bttv, %struct.bttv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.v4l2_rect* %45, %struct.v4l2_rect** %18, align 8
  %46 = load %struct.bttv*, %struct.bttv** %17, align 8
  %47 = getelementptr inbounds %struct.bttv, %struct.bttv* %46, i32 0, i32 2
  %48 = load %struct.bttv_crop*, %struct.bttv_crop** %47, align 8
  %49 = load %struct.bttv_fh*, %struct.bttv_fh** %9, align 8
  %50 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %48, i64 %56
  store %struct.bttv_crop* %57, %struct.bttv_crop** %19, align 8
  %58 = load %struct.bttv_fh*, %struct.bttv_fh** %9, align 8
  %59 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %110

62:                                               ; preds = %35
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %110

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %110

68:                                               ; preds = %65
  %69 = load %struct.bttv*, %struct.bttv** %17, align 8
  %70 = load i32, i32* @VIDEO_RESOURCES, align 4
  %71 = call i32 @locked_btres(%struct.bttv* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %110, label %73

73:                                               ; preds = %68
  store i32 48, i32* %20, align 4
  store i32 32, i32* %21, align 4
  %74 = load %struct.v4l2_rect*, %struct.v4l2_rect** %18, align 8
  %75 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* @MAX_HACTIVE, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @min(i32 %76, i32 %78)
  store i32 %79, i32* %22, align 4
  %80 = load %struct.v4l2_rect*, %struct.v4l2_rect** %18, align 8
  %81 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %23, align 4
  %83 = load %struct.bttv*, %struct.bttv** %17, align 8
  %84 = getelementptr inbounds %struct.bttv, %struct.bttv* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.v4l2_rect*, %struct.v4l2_rect** %18, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %73
  %91 = load %struct.bttv*, %struct.bttv** %17, align 8
  %92 = getelementptr inbounds %struct.bttv, %struct.bttv* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.v4l2_rect*, %struct.v4l2_rect** %18, align 8
  %95 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = load i32, i32* %23, align 4
  %99 = zext i32 %98 to i64
  %100 = sub nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %23, align 4
  %102 = load i32, i32* @EBUSY, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %24, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %23, align 4
  %106 = icmp ugt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %90
  br label %235

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %73
  br label %135

110:                                              ; preds = %68, %65, %62, %35
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %24, align 4
  %113 = load %struct.bttv*, %struct.bttv** %17, align 8
  %114 = getelementptr inbounds %struct.bttv, %struct.bttv* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.bttv_crop*, %struct.bttv_crop** %19, align 8
  %117 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %115, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %235

122:                                              ; preds = %110
  %123 = load %struct.bttv_crop*, %struct.bttv_crop** %19, align 8
  %124 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %20, align 4
  %126 = load %struct.bttv_crop*, %struct.bttv_crop** %19, align 8
  %127 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %21, align 4
  %129 = load %struct.bttv_crop*, %struct.bttv_crop** %19, align 8
  %130 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %22, align 4
  %132 = load %struct.bttv_crop*, %struct.bttv_crop** %19, align 8
  %133 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %23, align 4
  store i32 0, i32* %16, align 4
  br label %135

135:                                              ; preds = %122, %109
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %13, align 4
  %138 = sub i32 %136, %137
  %139 = sub i32 %138, 1
  %140 = load i32, i32* %13, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %22, align 4
  %143 = load i32, i32* %13, align 4
  %144 = and i32 %142, %143
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %21, align 4
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @V4L2_FIELD_HAS_BOTH(i32 %146)
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %23, align 4
  %152 = lshr i32 %151, %150
  store i32 %152, i32* %23, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %203

155:                                              ; preds = %135
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %22, align 4
  %160 = call i32 @clamp(i32 %157, i32 %158, i32 %159)
  %161 = load i32*, i32** %10, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %21, align 4
  %165 = load i32, i32* %23, align 4
  %166 = call i32 @clamp(i32 %163, i32 %164, i32 %165)
  %167 = load i32*, i32** %11, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %14, align 4
  %171 = add i32 %169, %170
  %172 = load i32, i32* %13, align 4
  %173 = and i32 %171, %172
  %174 = load i32*, i32** %10, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %202

177:                                              ; preds = %155
  %178 = load %struct.bttv_crop*, %struct.bttv_crop** %19, align 8
  %179 = load %struct.v4l2_rect*, %struct.v4l2_rect** %18, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @bttv_crop_adjust(%struct.bttv_crop* %178, %struct.v4l2_rect* %179, i32 %181, i32 %183, i32 %184)
  %186 = load %struct.bttv*, %struct.bttv** %17, align 8
  %187 = getelementptr inbounds %struct.bttv, %struct.bttv* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.bttv_crop*, %struct.bttv_crop** %19, align 8
  %190 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %188, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %177
  %195 = load %struct.bttv*, %struct.bttv** %17, align 8
  %196 = getelementptr inbounds %struct.bttv, %struct.bttv* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.bttv_crop*, %struct.bttv_crop** %19, align 8
  %199 = getelementptr inbounds %struct.bttv_crop, %struct.bttv_crop* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  store i64 %197, i64* %200, align 8
  br label %201

201:                                              ; preds = %194, %177
  br label %202

202:                                              ; preds = %201, %155
  br label %234

203:                                              ; preds = %135
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %24, align 4
  %206 = load i32*, i32** %10, align 8
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %20, align 4
  %209 = icmp ult i32 %207, %208
  br i1 %209, label %232, label %210

210:                                              ; preds = %203
  %211 = load i32*, i32** %11, align 8
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %21, align 4
  %214 = icmp ult i32 %212, %213
  br i1 %214, label %232, label %215

215:                                              ; preds = %210
  %216 = load i32*, i32** %10, align 8
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %22, align 4
  %219 = icmp ugt i32 %217, %218
  br i1 %219, label %232, label %220

220:                                              ; preds = %215
  %221 = load i32*, i32** %11, align 8
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %23, align 4
  %224 = icmp ugt i32 %222, %223
  br i1 %224, label %232, label %225

225:                                              ; preds = %220
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %13, align 4
  %229 = xor i32 %228, -1
  %230 = and i32 %227, %229
  %231 = icmp ne i32 0, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %225, %220, %215, %210, %203
  br label %235

233:                                              ; preds = %225
  br label %234

234:                                              ; preds = %233, %202
  store i32 0, i32* %24, align 4
  br label %235

235:                                              ; preds = %234, %232, %121, %107
  %236 = load i32, i32* %24, align 4
  ret i32 %236
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @locked_btres(%struct.bttv*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @bttv_crop_adjust(%struct.bttv_crop*, %struct.v4l2_rect*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
