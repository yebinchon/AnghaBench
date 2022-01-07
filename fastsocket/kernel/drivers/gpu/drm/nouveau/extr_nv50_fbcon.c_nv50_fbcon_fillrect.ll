; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_2__, %struct.nouveau_fbdev* }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_fbdev = type { i32 }
%struct.fb_fillrect = type { i64, i64, i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@ROP_COPY = common dso_local global i64 0, align 8
@NvSub2D = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fbcon_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
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
  %21 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %22 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ROP_COPY, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 7, i32 11
  %28 = call i32 @RING_SPACE(%struct.nouveau_channel* %20, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %127

33:                                               ; preds = %2
  %34 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %35 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ROP_COPY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %41 = load i32, i32* @NvSub2D, align 4
  %42 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %40, i32 %41, i32 684, i32 1)
  %43 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %44 = call i32 @OUT_RING(%struct.nouveau_channel* %43, i32 1)
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %47 = load i32, i32* @NvSub2D, align 4
  %48 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %46, i32 %47, i32 1416, i32 1)
  %49 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %45
  %56 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %55, %45
  %63 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %64 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %69 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @OUT_RING(%struct.nouveau_channel* %63, i32 %72)
  br label %81

74:                                               ; preds = %55
  %75 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %76 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %77 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @OUT_RING(%struct.nouveau_channel* %75, i32 %79)
  br label %81

81:                                               ; preds = %74, %62
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %83 = load i32, i32* @NvSub2D, align 4
  %84 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %82, i32 %83, i32 1536, i32 4)
  %85 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %86 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %87 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @OUT_RING(%struct.nouveau_channel* %85, i32 %88)
  %90 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %91 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %92 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @OUT_RING(%struct.nouveau_channel* %90, i32 %93)
  %95 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %96 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %97 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %100 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %98, %101
  %103 = call i32 @OUT_RING(%struct.nouveau_channel* %95, i32 %102)
  %104 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %105 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %106 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %109 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  %112 = call i32 @OUT_RING(%struct.nouveau_channel* %104, i32 %111)
  %113 = load %struct.fb_fillrect*, %struct.fb_fillrect** %5, align 8
  %114 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ROP_COPY, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %81
  %119 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %120 = load i32, i32* @NvSub2D, align 4
  %121 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %119, i32 %120, i32 684, i32 1)
  %122 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %123 = call i32 @OUT_RING(%struct.nouveau_channel* %122, i32 3)
  br label %124

124:                                              ; preds = %118, %81
  %125 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %126 = call i32 @FIRE_RING(%struct.nouveau_channel* %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %124, %31
  %128 = load i32, i32* %3, align 4
  ret i32 %128
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
