; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_crtc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.nouveau_event = type { i32 }
%struct.nouveau_crtc = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.nv50_disp = type { i32 }
%struct.nv50_head = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { %struct.nouveau_event* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @nv50_crtc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_crtc_destroy(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.nouveau_event*, align 8
  %4 = alloca %struct.nouveau_crtc*, align 8
  %5 = alloca %struct.nv50_disp*, align 8
  %6 = alloca %struct.nv50_head*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nouveau_dev(i32 %10)
  %12 = call %struct.TYPE_16__* @nouveau_disp(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.nouveau_event*, %struct.nouveau_event** %13, align 8
  store %struct.nouveau_event* %14, %struct.nouveau_event** %3, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %16 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %15)
  store %struct.nouveau_crtc* %16, %struct.nouveau_crtc** %4, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.nv50_disp* @nv50_disp(i32 %19)
  store %struct.nv50_disp* %20, %struct.nv50_disp** %5, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %22 = call %struct.nv50_head* @nv50_head(%struct.drm_crtc* %21)
  store %struct.nv50_head* %22, %struct.nv50_head** %6, align 8
  %23 = load %struct.nv50_disp*, %struct.nv50_disp** %5, align 8
  %24 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nv50_head*, %struct.nv50_head** %6, align 8
  %27 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = call i32 @nv50_dmac_destroy(i32 %25, i32* %28)
  %30 = load %struct.nv50_disp*, %struct.nv50_disp** %5, align 8
  %31 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nv50_head*, %struct.nv50_head** %6, align 8
  %34 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = call i32 @nv50_pioc_destroy(i32 %32, i32* %35)
  %37 = load %struct.nv50_disp*, %struct.nv50_disp** %5, align 8
  %38 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nv50_head*, %struct.nv50_head** %6, align 8
  %41 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = call i32 @nv50_dmac_destroy(i32 %39, i32* %42)
  %44 = load %struct.nv50_disp*, %struct.nv50_disp** %5, align 8
  %45 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nv50_head*, %struct.nv50_head** %6, align 8
  %48 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = call i32 @nv50_pioc_destroy(i32 %46, i32* %49)
  %51 = load %struct.nouveau_event*, %struct.nouveau_event** %3, align 8
  %52 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %51, i32 0, i32 0
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %56 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = call i32 @list_del(i32* %57)
  %59 = load %struct.nouveau_event*, %struct.nouveau_event** %3, align 8
  %60 = getelementptr inbounds %struct.nouveau_event, %struct.nouveau_event* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %64 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @nouveau_bo_unmap(i64 %66)
  %68 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %69 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %1
  %74 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %75 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @nouveau_bo_unpin(i64 %77)
  br label %79

79:                                               ; preds = %73, %1
  %80 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %81 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = call i32 @nouveau_bo_ref(i32* null, i64* %82)
  %84 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %85 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @nouveau_bo_unmap(i64 %87)
  %89 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %90 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %79
  %95 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %96 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @nouveau_bo_unpin(i64 %98)
  br label %100

100:                                              ; preds = %94, %79
  %101 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %4, align 8
  %102 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = call i32 @nouveau_bo_ref(i32* null, i64* %103)
  %105 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %106 = call i32 @drm_crtc_cleanup(%struct.drm_crtc* %105)
  %107 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %108 = call i32 @kfree(%struct.drm_crtc* %107)
  ret void
}

declare dso_local %struct.TYPE_16__* @nouveau_disp(i32) #1

declare dso_local i32 @nouveau_dev(i32) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.nv50_disp* @nv50_disp(i32) #1

declare dso_local %struct.nv50_head* @nv50_head(%struct.drm_crtc*) #1

declare dso_local i32 @nv50_dmac_destroy(i32, i32*) #1

declare dso_local i32 @nv50_pioc_destroy(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nouveau_bo_unmap(i64) #1

declare dso_local i32 @nouveau_bo_unpin(i64) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i64*) #1

declare dso_local i32 @drm_crtc_cleanup(%struct.drm_crtc*) #1

declare dso_local i32 @kfree(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
