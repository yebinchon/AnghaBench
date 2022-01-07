; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_2__, %struct.nouveau_fbdev* }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_fbdev = type { i32 }
%struct.fb_fillrect = type { i64, i64, i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@NvSubGdiRect = common dso_local global i32 0, align 4
@ROP_COPY = common dso_local global i64 0, align 8
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fbcon_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_fillrect*, align 8
  %6 = alloca %struct.nouveau_fbdev*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %11, align 8
  store %struct.nouveau_fbdev* %12, %struct.nouveau_fbdev** %6, align 8
  %13 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nouveau_drm* @nouveau_drm(i32 %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %7, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 0
  %19 = load %struct.nouveau_channel*, %struct.nouveau_channel** %18, align 8
  store %struct.nouveau_channel* %19, %struct.nouveau_channel** %8, align 8
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %21 = call i32 @RING_SPACE(%struct.nouveau_channel* %20, i32 7)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %100

26:                                               ; preds = %2
  %27 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %28 = load i32, i32* @NvSubGdiRect, align 4
  %29 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %27, i32 %28, i32 764, i32 1)
  %30 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %31 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %32 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ROP_COPY, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 3
  %38 = call i32 @OUT_RING(%struct.nouveau_channel* %30, i32 %37)
  %39 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %40 = load i32, i32* @NvSubGdiRect, align 4
  %41 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %39, i32 %40, i32 1020, i32 1)
  %42 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %26
  %49 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %48, %26
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %57 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %62 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @OUT_RING(%struct.nouveau_channel* %56, i32 %65)
  br label %74

67:                                               ; preds = %48
  %68 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %69 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %70 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @OUT_RING(%struct.nouveau_channel* %68, i32 %72)
  br label %74

74:                                               ; preds = %67, %55
  %75 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %76 = load i32, i32* @NvSubGdiRect, align 4
  %77 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %75, i32 %76, i32 1024, i32 2)
  %78 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %79 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %80 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %81, 16
  %83 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %84 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  %87 = call i32 @OUT_RING(%struct.nouveau_channel* %78, i32 %86)
  %88 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %89 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %90 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 %91, 16
  %93 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %94 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %92, %95
  %97 = call i32 @OUT_RING(%struct.nouveau_channel* %88, i32 %96)
  %98 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %99 = call i32 @FIRE_RING(%struct.nouveau_channel* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %74, %24
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
