; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_pick_crtcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_pick_crtcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, i32, %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_connector**, %struct.drm_device* }
%struct.drm_fb_helper_crtc = type { i32 }
%struct.drm_fb_helper_connector = type { %struct.drm_connector* }
%struct.drm_connector = type { i64, %struct.drm_connector_helper_funcs* }
%struct.drm_connector_helper_funcs = type { %struct.drm_encoder* (%struct.drm_connector*)* }
%struct.drm_encoder = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_crtc**, %struct.drm_display_mode**, i32, i32, i32)* @drm_pick_crtcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_pick_crtcs(%struct.drm_fb_helper* %0, %struct.drm_fb_helper_crtc** %1, %struct.drm_display_mode** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_fb_helper*, align 8
  %9 = alloca %struct.drm_fb_helper_crtc**, align 8
  %10 = alloca %struct.drm_display_mode**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_device*, align 8
  %17 = alloca %struct.drm_connector*, align 8
  %18 = alloca %struct.drm_connector_helper_funcs*, align 8
  %19 = alloca %struct.drm_encoder*, align 8
  %20 = alloca %struct.drm_fb_helper_crtc*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.drm_fb_helper_crtc**, align 8
  %25 = alloca %struct.drm_fb_helper_crtc*, align 8
  %26 = alloca %struct.drm_fb_helper_connector*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %8, align 8
  store %struct.drm_fb_helper_crtc** %1, %struct.drm_fb_helper_crtc*** %9, align 8
  store %struct.drm_display_mode** %2, %struct.drm_display_mode*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %27 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %28 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %27, i32 0, i32 4
  %29 = load %struct.drm_device*, %struct.drm_device** %28, align 8
  store %struct.drm_device* %29, %struct.drm_device** %16, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %32 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %231

36:                                               ; preds = %6
  %37 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %38 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %37, i32 0, i32 3
  %39 = load %struct.drm_fb_helper_connector**, %struct.drm_fb_helper_connector*** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %39, i64 %41
  %43 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %42, align 8
  store %struct.drm_fb_helper_connector* %43, %struct.drm_fb_helper_connector** %26, align 8
  %44 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %26, align 8
  %45 = getelementptr inbounds %struct.drm_fb_helper_connector, %struct.drm_fb_helper_connector* %44, i32 0, i32 0
  %46 = load %struct.drm_connector*, %struct.drm_connector** %45, align 8
  store %struct.drm_connector* %46, %struct.drm_connector** %17, align 8
  %47 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %47, i64 %49
  store %struct.drm_fb_helper_crtc* null, %struct.drm_fb_helper_crtc** %50, align 8
  store %struct.drm_fb_helper_crtc* null, %struct.drm_fb_helper_crtc** %20, align 8
  %51 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %52 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %9, align 8
  %53 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @drm_pick_crtcs(%struct.drm_fb_helper* %51, %struct.drm_fb_helper_crtc** %52, %struct.drm_display_mode** %53, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %22, align 4
  %59 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.drm_display_mode*, %struct.drm_display_mode** %59, i64 %61
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %62, align 8
  %64 = icmp eq %struct.drm_display_mode* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %36
  %66 = load i32, i32* %22, align 4
  store i32 %66, i32* %7, align 4
  br label %231

67:                                               ; preds = %36
  %68 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.drm_fb_helper_crtc** @kzalloc(i32 %74, i32 %75)
  store %struct.drm_fb_helper_crtc** %76, %struct.drm_fb_helper_crtc*** %24, align 8
  %77 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %78 = icmp ne %struct.drm_fb_helper_crtc** %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %22, align 4
  store i32 %80, i32* %7, align 4
  br label %231

81:                                               ; preds = %67
  store i32 1, i32* %21, align 4
  %82 = load %struct.drm_connector*, %struct.drm_connector** %17, align 8
  %83 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @connector_status_connected, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %21, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %21, align 4
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %26, align 8
  %92 = call i64 @drm_has_cmdline_mode(%struct.drm_fb_helper_connector* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %21, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %21, align 4
  br label %97

97:                                               ; preds = %94, %90
  %98 = load %struct.drm_fb_helper_connector*, %struct.drm_fb_helper_connector** %26, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @drm_has_preferred_mode(%struct.drm_fb_helper_connector* %98, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* %21, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %21, align 4
  br label %106

106:                                              ; preds = %103, %97
  %107 = load %struct.drm_connector*, %struct.drm_connector** %17, align 8
  %108 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %107, i32 0, i32 1
  %109 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %108, align 8
  store %struct.drm_connector_helper_funcs* %109, %struct.drm_connector_helper_funcs** %18, align 8
  %110 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %18, align 8
  %111 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %110, i32 0, i32 0
  %112 = load %struct.drm_encoder* (%struct.drm_connector*)*, %struct.drm_encoder* (%struct.drm_connector*)** %111, align 8
  %113 = load %struct.drm_connector*, %struct.drm_connector** %17, align 8
  %114 = call %struct.drm_encoder* %112(%struct.drm_connector* %113)
  store %struct.drm_encoder* %114, %struct.drm_encoder** %19, align 8
  %115 = load %struct.drm_encoder*, %struct.drm_encoder** %19, align 8
  %116 = icmp ne %struct.drm_encoder* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %106
  br label %227

118:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %223, %118
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %122 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %226

125:                                              ; preds = %119
  %126 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %127 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %126, i32 0, i32 2
  %128 = load %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.drm_fb_helper_crtc, %struct.drm_fb_helper_crtc* %128, i64 %130
  store %struct.drm_fb_helper_crtc* %131, %struct.drm_fb_helper_crtc** %25, align 8
  %132 = load %struct.drm_encoder*, %struct.drm_encoder** %19, align 8
  %133 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %14, align 4
  %136 = shl i32 1, %135
  %137 = and i32 %134, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  br label %223

140:                                              ; preds = %125
  store i32 0, i32* %15, align 4
  br label %141

141:                                              ; preds = %155, %140
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %9, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %146, i64 %148
  %150 = load %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %149, align 8
  %151 = load %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %25, align 8
  %152 = icmp eq %struct.drm_fb_helper_crtc* %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %158

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %141

158:                                              ; preds = %153, %141
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %183

162:                                              ; preds = %158
  %163 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %164 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %223

168:                                              ; preds = %162
  %169 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.drm_display_mode*, %struct.drm_display_mode** %169, i64 %171
  %173 = load %struct.drm_display_mode*, %struct.drm_display_mode** %172, align 8
  %174 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.drm_display_mode*, %struct.drm_display_mode** %174, i64 %176
  %178 = load %struct.drm_display_mode*, %struct.drm_display_mode** %177, align 8
  %179 = call i32 @drm_mode_equal(%struct.drm_display_mode* %173, %struct.drm_display_mode* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %168
  br label %223

182:                                              ; preds = %168
  br label %183

183:                                              ; preds = %182, %158
  %184 = load %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %25, align 8
  %185 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %185, i64 %187
  store %struct.drm_fb_helper_crtc* %184, %struct.drm_fb_helper_crtc** %188, align 8
  %189 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %190 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %9, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 8
  %194 = trunc i64 %193 to i32
  %195 = call i32 @memcpy(%struct.drm_fb_helper_crtc** %189, %struct.drm_fb_helper_crtc** %190, i32 %194)
  %196 = load i32, i32* %21, align 4
  %197 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %198 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %199 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @drm_pick_crtcs(%struct.drm_fb_helper* %197, %struct.drm_fb_helper_crtc** %198, %struct.drm_display_mode** %199, i32 %201, i32 %202, i32 %203)
  %205 = add nsw i32 %196, %204
  store i32 %205, i32* %23, align 4
  %206 = load i32, i32* %23, align 4
  %207 = load i32, i32* %22, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %209, label %222

209:                                              ; preds = %183
  %210 = load %struct.drm_fb_helper_crtc*, %struct.drm_fb_helper_crtc** %25, align 8
  store %struct.drm_fb_helper_crtc* %210, %struct.drm_fb_helper_crtc** %20, align 8
  %211 = load i32, i32* %23, align 4
  store i32 %211, i32* %22, align 4
  %212 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %9, align 8
  %213 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %214 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  %215 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 %218, 8
  %220 = trunc i64 %219 to i32
  %221 = call i32 @memcpy(%struct.drm_fb_helper_crtc** %212, %struct.drm_fb_helper_crtc** %213, i32 %220)
  br label %222

222:                                              ; preds = %209, %183
  br label %223

223:                                              ; preds = %222, %181, %167, %139
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %14, align 4
  br label %119

226:                                              ; preds = %119
  br label %227

227:                                              ; preds = %226, %117
  %228 = load %struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc*** %24, align 8
  %229 = call i32 @kfree(%struct.drm_fb_helper_crtc** %228)
  %230 = load i32, i32* %22, align 4
  store i32 %230, i32* %7, align 4
  br label %231

231:                                              ; preds = %227, %79, %65, %35
  %232 = load i32, i32* %7, align 4
  ret i32 %232
}

declare dso_local %struct.drm_fb_helper_crtc** @kzalloc(i32, i32) #1

declare dso_local i64 @drm_has_cmdline_mode(%struct.drm_fb_helper_connector*) #1

declare dso_local i64 @drm_has_preferred_mode(%struct.drm_fb_helper_connector*, i32, i32) #1

declare dso_local i32 @drm_mode_equal(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @memcpy(%struct.drm_fb_helper_crtc**, %struct.drm_fb_helper_crtc**, i32) #1

declare dso_local i32 @kfree(%struct.drm_fb_helper_crtc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
