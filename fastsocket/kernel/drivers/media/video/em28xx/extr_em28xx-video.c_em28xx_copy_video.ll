; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_copy_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_copy_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i64 }
%struct.em28xx_dmaqueue = type { i64 }
%struct.em28xx_buffer = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"Overflow of %zi bytes past buffer end (1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Overflow of %zi bytes past buffer end(2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, %struct.em28xx_dmaqueue*, %struct.em28xx_buffer*, i8*, i8*, i64)* @em28xx_copy_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_copy_video(%struct.em28xx* %0, %struct.em28xx_dmaqueue* %1, %struct.em28xx_buffer* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca %struct.em28xx_dmaqueue*, align 8
  %9 = alloca %struct.em28xx_buffer*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %7, align 8
  store %struct.em28xx_dmaqueue* %1, %struct.em28xx_dmaqueue** %8, align 8
  store %struct.em28xx_buffer* %2, %struct.em28xx_buffer** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 %24, 1
  store i32 %25, i32* %21, align 4
  %26 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %27 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %28, %29
  %31 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %32 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %30, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %6
  %37 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %38 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %42 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %36, %6
  %46 = load i8*, i8** %10, align 8
  store i8* %46, i8** %15, align 8
  %47 = load i64, i64* %12, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %20, align 4
  %49 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %50 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i8*, i8** %11, align 8
  store i8* %54, i8** %13, align 8
  br label %68

55:                                               ; preds = %45
  %56 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %57 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  store i8* %61, i8** %13, align 8
  br label %67

62:                                               ; preds = %55
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %21, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8* %66, i8** %13, align 8
  br label %67

67:                                               ; preds = %62, %60
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %70 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %71, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %16, align 4
  %76 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %77 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = urem i64 %78, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %17, align 4
  %83 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %84 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %68
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %21, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %18, align 4
  br label %100

93:                                               ; preds = %68
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %21, align 4
  %96 = mul nsw i32 %94, %95
  %97 = mul nsw i32 %96, 2
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %93, %87
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %101, i64 %103
  store i8* %104, i8** %14, align 8
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %17, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* %20, align 4
  br label %115

113:                                              ; preds = %100
  %114 = load i32, i32* %19, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 %116, i32* %19, align 4
  %117 = load i8*, i8** %14, align 8
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8*, i8** %11, align 8
  %122 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %123 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = icmp ugt i8* %120, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %115
  %129 = load i8*, i8** %14, align 8
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8*, i8** %11, align 8
  %134 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %135 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i8, i8* %133, i64 %137
  %139 = ptrtoint i8* %132 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  %143 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load i8*, i8** %11, align 8
  %145 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %146 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8, i8* %144, i64 %148
  %150 = load i8*, i8** %14, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %20, align 4
  store i32 %155, i32* %19, align 4
  br label %156

156:                                              ; preds = %128, %115
  %157 = load i32, i32* %19, align 4
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %246

160:                                              ; preds = %156
  %161 = load i8*, i8** %14, align 8
  %162 = load i8*, i8** %15, align 8
  %163 = load i32, i32* %19, align 4
  %164 = call i32 @memcpy(i8* %161, i8* %162, i32 %163)
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %20, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* %20, align 4
  br label %168

168:                                              ; preds = %232, %160
  %169 = load i32, i32* %20, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %240

171:                                              ; preds = %168
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %21, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i8*, i8** %14, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr i8, i8* %175, i64 %176
  store i8* %177, i8** %14, align 8
  %178 = load i32, i32* %19, align 4
  %179 = load i8*, i8** %15, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr i8, i8* %179, i64 %180
  store i8* %181, i8** %15, align 8
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %20, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %171
  %186 = load i32, i32* %20, align 4
  store i32 %186, i32* %19, align 4
  br label %189

187:                                              ; preds = %171
  %188 = load i32, i32* %21, align 4
  store i32 %188, i32* %19, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = load i8*, i8** %14, align 8
  %191 = load i32, i32* %19, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8*, i8** %11, align 8
  %195 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %196 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i8, i8* %194, i64 %198
  %200 = icmp ugt i8* %193, %199
  br i1 %200, label %201, label %228

201:                                              ; preds = %189
  %202 = load i8*, i8** %14, align 8
  %203 = load i32, i32* %19, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8*, i8** %11, align 8
  %207 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %208 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i8, i8* %206, i64 %210
  %212 = ptrtoint i8* %205 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = trunc i64 %214 to i32
  %216 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %215)
  %217 = load i8*, i8** %11, align 8
  %218 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %219 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds i8, i8* %217, i64 %221
  %223 = load i8*, i8** %14, align 8
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %20, align 4
  store i32 %227, i32* %19, align 4
  br label %228

228:                                              ; preds = %201, %189
  %229 = load i32, i32* %19, align 4
  %230 = icmp sle i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  br label %240

232:                                              ; preds = %228
  %233 = load i8*, i8** %14, align 8
  %234 = load i8*, i8** %15, align 8
  %235 = load i32, i32* %19, align 4
  %236 = call i32 @memcpy(i8* %233, i8* %234, i32 %235)
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %20, align 4
  %239 = sub nsw i32 %238, %237
  store i32 %239, i32* %20, align 4
  br label %168

240:                                              ; preds = %231, %168
  %241 = load i64, i64* %12, align 8
  %242 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %243 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add i64 %244, %241
  store i64 %245, i64* %243, align 8
  br label %246

246:                                              ; preds = %240, %159
  ret void
}

declare dso_local i32 @em28xx_isocdbg(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
