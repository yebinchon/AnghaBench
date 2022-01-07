; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv_modes.c_tv_setup_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv_modes.c_tv_setup_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.nv17_tv_encoder = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.nv17_tv_norm_params = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@id3 = common dso_local global i32 0, align 4
@id2 = common dso_local global i32 0, align 4
@fparams = common dso_local global %struct.filter_params** null, align 8
@id5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @tv_setup_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_setup_filter(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.nv17_tv_encoder*, align 8
  %4 = alloca %struct.nv17_tv_norm_params*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca [2 x [4 x [7 x i32]]*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca %struct.filter_params*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = call %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder* %15)
  store %struct.nv17_tv_encoder* %16, %struct.nv17_tv_encoder** %3, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %18 = call %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder* %17)
  store %struct.nv17_tv_norm_params* %18, %struct.nv17_tv_norm_params** %4, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %20 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds [2 x [4 x [7 x i32]]*], [2 x [4 x [7 x i32]]*]* %6, i64 0, i64 0
  %24 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %3, align 8
  %25 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = bitcast i32** %26 to [4 x [7 x i32]]*
  store [4 x [7 x i32]]* %27, [4 x [7 x i32]]** %23, align 8
  %28 = getelementptr inbounds [4 x [7 x i32]]*, [4 x [7 x i32]]** %23, i64 1
  %29 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %3, align 8
  %30 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = bitcast i32** %31 to [4 x [7 x i32]]*
  store [4 x [7 x i32]]* %32, [4 x [7 x i32]]** %28, align 8
  %33 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %3, align 8
  %34 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @calc_overscan(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %3, align 8
  %38 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 50
  %41 = load i32, i32* @id3, align 4
  %42 = sdiv i32 %41, 100
  %43 = mul nsw i32 %40, %42
  store i32 %43, i32* %11, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @id3, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %44, align 4
  %50 = getelementptr inbounds i32, i32* %44, i64 1
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @id3, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %50, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %4, align 8
  %60 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %58, %62
  %64 = call i32 @do_div(i32 %57, i32 %63)
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %4, align 8
  %69 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %67, %71
  %73 = call i32 @do_div(i32 %66, i32 %72)
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %252, %1
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %255

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @id2, align 4
  %83 = call i32 @max(i32 %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %248, %77
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %251

90:                                               ; preds = %87
  %91 = load %struct.filter_params**, %struct.filter_params*** @fparams, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.filter_params*, %struct.filter_params** %91, i64 %93
  %95 = load %struct.filter_params*, %struct.filter_params** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %95, i64 %97
  store %struct.filter_params* %98, %struct.filter_params** %13, align 8
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %244, %90
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 7
  br i1 %101, label %102, label %247

102:                                              ; preds = %99
  %103 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %104 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %107 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %105, %110
  %112 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %113 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %7, align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %111, %118
  %120 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %121 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %7, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %119, %128
  %130 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %131 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %134 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %7, align 4
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %132, %137
  %139 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %140 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %7, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 %143, %144
  %146 = add nsw i32 %138, %145
  %147 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %148 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %7, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* %7, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %7, align 4
  %155 = mul nsw i32 %153, %154
  %156 = add nsw i32 %146, %155
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %156, %160
  %162 = add nsw i32 %129, %161
  %163 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %164 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %167 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %7, align 4
  %170 = mul nsw i32 %168, %169
  %171 = add nsw i32 %165, %170
  %172 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %173 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %7, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* %7, align 4
  %178 = mul nsw i32 %176, %177
  %179 = add nsw i32 %171, %178
  %180 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %181 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %180, i32 0, i32 11
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %7, align 4
  %184 = mul nsw i32 %182, %183
  %185 = load i32, i32* %7, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load i32, i32* %7, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %179, %188
  %190 = load i32, i32* %11, align 4
  %191 = mul nsw i32 %189, %190
  %192 = add nsw i32 %162, %191
  %193 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %194 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %193, i32 0, i32 12
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %197 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %196, i32 0, i32 13
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %7, align 4
  %200 = mul nsw i32 %198, %199
  %201 = add nsw i32 %195, %200
  %202 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %203 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %202, i32 0, i32 14
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %7, align 4
  %206 = mul nsw i32 %204, %205
  %207 = load i32, i32* %7, align 4
  %208 = mul nsw i32 %206, %207
  %209 = add nsw i32 %201, %208
  %210 = load %struct.filter_params*, %struct.filter_params** %13, align 8
  %211 = getelementptr inbounds %struct.filter_params, %struct.filter_params* %210, i32 0, i32 15
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %7, align 4
  %214 = mul nsw i32 %212, %213
  %215 = load i32, i32* %7, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %7, align 4
  %218 = mul nsw i32 %216, %217
  %219 = add nsw i32 %209, %218
  %220 = load i32, i32* %11, align 4
  %221 = mul nsw i32 %219, %220
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = mul nsw i32 %221, %225
  %227 = add nsw i32 %192, %226
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* @id5, align 4
  %230 = sdiv i32 %229, 2
  %231 = add nsw i32 %228, %230
  %232 = ashr i32 %231, 39
  %233 = and i32 %232, -2147418624
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [2 x [4 x [7 x i32]]*], [2 x [4 x [7 x i32]]*]* %6, i64 0, i64 %235
  %237 = load [4 x [7 x i32]]*, [4 x [7 x i32]]** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [4 x [7 x i32]], [4 x [7 x i32]]* %237, i64 0, i64 %239
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [7 x i32], [7 x i32]* %240, i64 0, i64 %242
  store i32 %233, i32* %243, align 4
  br label %244

244:                                              ; preds = %102
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %99

247:                                              ; preds = %99
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %8, align 4
  br label %87

251:                                              ; preds = %87
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %9, align 4
  br label %74

255:                                              ; preds = %74
  ret void
}

declare dso_local %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder*) #1

declare dso_local %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local i32 @calc_overscan(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
