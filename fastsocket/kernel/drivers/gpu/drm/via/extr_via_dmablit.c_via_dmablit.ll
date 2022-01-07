; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dmablit.c_via_dmablit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dmablit.c_via_dmablit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i64, i32, i32** }

@.str = private unnamed_addr constant [32 x i8] c"Called without initialization.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIA_NUM_BLIT_SLOTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_11__*)* @via_dmablit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_dmablit(%struct.drm_device* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %107

22:                                               ; preds = %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 1
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 %33
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %8, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @via_dmablit_grab_slot(%struct.TYPE_12__* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 0, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %107

41:                                               ; preds = %22
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32* @kmalloc(i32 4, i32 %42)
  store i32* %43, i32** %7, align 8
  %44 = icmp eq i32* null, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = call i32 @via_dmablit_release_slot(%struct.TYPE_12__* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %107

50:                                               ; preds = %41
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = call i32 @via_build_sg_info(%struct.drm_device* %51, i32* %52, %struct.TYPE_11__* %53)
  store i32 %54, i32* %9, align 4
  %55 = icmp ne i32 0, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = call i32 @via_dmablit_release_slot(%struct.TYPE_12__* %57)
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %107

62:                                               ; preds = %50
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load i32**, i32*** %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = getelementptr inbounds i32*, i32** %70, i64 %73
  store i32* %67, i32** %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VIA_NUM_BLIT_SLOTS, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %62
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %62
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i64 %92, i64* %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @via_dmablit_handler(%struct.drm_device* %104, i32 %105, i32 0)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %84, %56, %45, %39, %18
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @via_dmablit_grab_slot(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @via_dmablit_release_slot(%struct.TYPE_12__*) #1

declare dso_local i32 @via_build_sg_info(%struct.drm_device*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @via_dmablit_handler(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
