; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_imageblit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_2__, %struct.nouveau_fbdev* }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_fbdev = type { i32 }
%struct.fb_image = type { i32, i32, i32, i64, i64, i32, i32, i64 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@NvSubGdiRect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fbcon_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_image*, align 8
  %6 = alloca %struct.nouveau_fbdev*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_image* %1, %struct.fb_image** %5, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 2
  %18 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %17, align 8
  store %struct.nouveau_fbdev* %18, %struct.nouveau_fbdev** %6, align 8
  %19 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %20 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nouveau_drm* @nouveau_drm(i32 %21)
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %7, align 8
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 0
  %25 = load %struct.nouveau_channel*, %struct.nouveau_channel** %24, align 8
  store %struct.nouveau_channel* %25, %struct.nouveau_channel** %8, align 8
  %26 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %27 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %13, align 8
  %30 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %31 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %204

37:                                               ; preds = %2
  %38 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %39 = call i32 @RING_SPACE(%struct.nouveau_channel* %38, i32 8)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %3, align 4
  br label %204

44:                                               ; preds = %37
  %45 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %46 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ALIGN(i32 %47, i32 8)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %51 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  %54 = call i32 @ALIGN(i32 %53, i32 32)
  %55 = ashr i32 %54, 5
  store i32 %55, i32* %11, align 4
  %56 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %44
  %63 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %62, %44
  %70 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %75 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %84 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  br label %97

88:                                               ; preds = %62
  %89 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %90 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %9, align 4
  %93 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %94 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %88, %69
  %98 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %99 = load i32, i32* @NvSubGdiRect, align 4
  %100 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %98, i32 %99, i32 3044, i32 7)
  %101 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %102 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %103 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 %104, 16
  %106 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %107 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 65535
  %110 = or i32 %105, %109
  %111 = call i32 @OUT_RING(%struct.nouveau_channel* %101, i32 %110)
  %112 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %113 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %114 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %117 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %115, %118
  %120 = shl i32 %119, 16
  %121 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %122 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %125 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %123, %126
  %128 = and i32 %127, 65535
  %129 = or i32 %120, %128
  %130 = call i32 @OUT_RING(%struct.nouveau_channel* %112, i32 %129)
  %131 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @OUT_RING(%struct.nouveau_channel* %131, i32 %132)
  %134 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @OUT_RING(%struct.nouveau_channel* %134, i32 %135)
  %137 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %138 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %139 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = shl i32 %140, 16
  %142 = load i32, i32* %12, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @OUT_RING(%struct.nouveau_channel* %137, i32 %143)
  %145 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %146 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %147 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = shl i32 %148, 16
  %150 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %151 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %149, %152
  %154 = call i32 @OUT_RING(%struct.nouveau_channel* %145, i32 %153)
  %155 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %156 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %157 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = shl i32 %158, 16
  %160 = load %struct.fb_image*, %struct.fb_image** %5, align 8
  %161 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 65535
  %164 = or i32 %159, %163
  %165 = call i32 @OUT_RING(%struct.nouveau_channel* %155, i32 %164)
  br label %166

166:                                              ; preds = %185, %97
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %201

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  %171 = icmp sgt i32 %170, 128
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %175

173:                                              ; preds = %169
  %174 = load i32, i32* %11, align 4
  br label %175

175:                                              ; preds = %173, %172
  %176 = phi i32 [ 128, %172 ], [ %174, %173 ]
  store i32 %176, i32* %15, align 4
  %177 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  %180 = call i32 @RING_SPACE(%struct.nouveau_channel* %177, i32 %179)
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %3, align 4
  br label %204

185:                                              ; preds = %175
  %186 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %187 = load i32, i32* @NvSubGdiRect, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %186, i32 %187, i32 3072, i32 %188)
  %190 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = load i32, i32* %15, align 4
  %193 = call i32 @OUT_RINGp(%struct.nouveau_channel* %190, i32* %191, i32 %192)
  %194 = load i32, i32* %15, align 4
  %195 = load i32*, i32** %13, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %13, align 8
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %11, align 4
  %200 = sub nsw i32 %199, %198
  store i32 %200, i32* %11, align 4
  br label %166

201:                                              ; preds = %166
  %202 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %203 = call i32 @FIRE_RING(%struct.nouveau_channel* %202)
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %201, %183, %42, %34
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @OUT_RINGp(%struct.nouveau_channel*, i32*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
