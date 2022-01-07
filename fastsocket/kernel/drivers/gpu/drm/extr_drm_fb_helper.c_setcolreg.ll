; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.fb_info = type { %struct.TYPE_13__, i64, %struct.TYPE_8__, %struct.drm_fb_helper* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.drm_fb_helper = type { %struct.TYPE_14__*, %struct.drm_framebuffer* }
%struct.TYPE_14__ = type { i32 (%struct.drm_crtc*, i32, i32, i32, i32)*, i32 (%struct.drm_crtc*, i32*, i32*, i32*, i32)* }
%struct.drm_framebuffer = type { i32, i32 }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32, i32, i32, %struct.fb_info*)* @setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setcolreg(%struct.drm_crtc* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.drm_fb_helper*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 3
  %26 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %25, align 8
  store %struct.drm_fb_helper* %26, %struct.drm_fb_helper** %14, align 8
  %27 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %14, align 8
  %28 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %27, i32 0, i32 1
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %28, align 8
  store %struct.drm_framebuffer* %29, %struct.drm_framebuffer** %15, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %124

36:                                               ; preds = %6
  %37 = load i32, i32* %12, align 4
  %38 = icmp sgt i32 %37, 16
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %235

42:                                               ; preds = %36
  %43 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %17, align 8
  %47 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 16, %51
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 16, %59
  %61 = load i32, i32* %10, align 4
  %62 = ashr i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 16, %67
  %69 = load i32, i32* %11, align 4
  %70 = ashr i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %71, %76
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %78, %83
  %85 = or i32 %77, %84
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %86, %91
  %93 = or i32 %85, %92
  store i32 %93, i32* %18, align 4
  %94 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %42
  %101 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 1, %105
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  %108 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %19, align 4
  %114 = shl i32 %113, %112
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %18, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %18, align 4
  br label %118

118:                                              ; preds = %100, %42
  %119 = load i32, i32* %18, align 4
  %120 = load i32*, i32** %17, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  store i32 0, i32* %7, align 4
  br label %235

124:                                              ; preds = %6
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %16, align 4
  %126 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %127 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 16
  br i1 %129, label %130, label %217

130:                                              ; preds = %124
  %131 = load i32, i32* %12, align 4
  %132 = shl i32 %131, 3
  store i32 %132, i32* %16, align 4
  %133 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %134 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 16
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load i32, i32* %12, align 4
  %139 = icmp sgt i32 %138, 63
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %7, align 4
  br label %235

143:                                              ; preds = %137, %130
  %144 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %145 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 15
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i32, i32* %12, align 4
  %150 = icmp sgt i32 %149, 31
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %7, align 4
  br label %235

154:                                              ; preds = %148, %143
  %155 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %156 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 16
  br i1 %158, label %159, label %216

159:                                              ; preds = %154
  %160 = load i32, i32* %12, align 4
  %161 = icmp slt i32 %160, 32
  br i1 %161, label %162, label %184

162:                                              ; preds = %159
  store i32 0, i32* %23, align 4
  br label %163

163:                                              ; preds = %180, %162
  %164 = load i32, i32* %23, align 4
  %165 = icmp slt i32 %164, 8
  br i1 %165, label %166, label %183

166:                                              ; preds = %163
  %167 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %14, align 8
  %168 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %167, i32 0, i32 0
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32 (%struct.drm_crtc*, i32, i32, i32, i32)*, i32 (%struct.drm_crtc*, i32, i32, i32, i32)** %170, align 8
  %172 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %23, align 4
  %178 = add nsw i32 %176, %177
  %179 = call i32 %171(%struct.drm_crtc* %172, i32 %173, i32 %174, i32 %175, i32 %178)
  br label %180

180:                                              ; preds = %166
  %181 = load i32, i32* %23, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %23, align 4
  br label %163

183:                                              ; preds = %163
  br label %184

184:                                              ; preds = %183, %159
  %185 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %14, align 8
  %186 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %185, i32 0, i32 0
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = load i32 (%struct.drm_crtc*, i32*, i32*, i32*, i32)*, i32 (%struct.drm_crtc*, i32*, i32*, i32*, i32)** %188, align 8
  %190 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %191 = load i32, i32* %16, align 4
  %192 = ashr i32 %191, 1
  %193 = call i32 %189(%struct.drm_crtc* %190, i32* %20, i32* %21, i32* %22, i32 %192)
  store i32 0, i32* %23, align 4
  br label %194

194:                                              ; preds = %212, %184
  %195 = load i32, i32* %23, align 4
  %196 = icmp slt i32 %195, 4
  br i1 %196, label %197, label %215

197:                                              ; preds = %194
  %198 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %14, align 8
  %199 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %198, i32 0, i32 0
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i32 (%struct.drm_crtc*, i32, i32, i32, i32)*, i32 (%struct.drm_crtc*, i32, i32, i32, i32)** %201, align 8
  %203 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* %16, align 4
  %208 = ashr i32 %207, 1
  %209 = load i32, i32* %23, align 4
  %210 = add nsw i32 %208, %209
  %211 = call i32 %202(%struct.drm_crtc* %203, i32 %204, i32 %205, i32 %206, i32 %210)
  br label %212

212:                                              ; preds = %197
  %213 = load i32, i32* %23, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %23, align 4
  br label %194

215:                                              ; preds = %194
  br label %216

216:                                              ; preds = %215, %154
  br label %217

217:                                              ; preds = %216, %124
  %218 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %219 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 16
  br i1 %221, label %222, label %234

222:                                              ; preds = %217
  %223 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %14, align 8
  %224 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %223, i32 0, i32 0
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load i32 (%struct.drm_crtc*, i32, i32, i32, i32)*, i32 (%struct.drm_crtc*, i32, i32, i32, i32)** %226, align 8
  %228 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %16, align 4
  %233 = call i32 %227(%struct.drm_crtc* %228, i32 %229, i32 %230, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %222, %217
  store i32 0, i32* %7, align 4
  br label %235

235:                                              ; preds = %234, %151, %140, %118, %39
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
