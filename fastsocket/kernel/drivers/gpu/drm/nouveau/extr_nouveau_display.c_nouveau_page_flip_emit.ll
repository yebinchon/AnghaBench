; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_page_flip_emit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_page_flip_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.nouveau_drm*, %struct.nouveau_fence_chan* }
%struct.nouveau_drm = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_fence_chan = type { i32 }
%struct.nouveau_bo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_page_flip_state = type { i32 }
%struct.nouveau_fence = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NV_C0 = common dso_local global i64 0, align 8
@NvSubSw = common dso_local global i32 0, align 4
@NV_SW_PAGE_FLIP = common dso_local global i32 0, align 4
@NV10_SUBCHAN_REF_CNT = common dso_local global i32 0, align 4
@NVSW_SUBCHAN_PAGE_FLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.nouveau_bo*, %struct.nouveau_bo*, %struct.nouveau_page_flip_state*, %struct.nouveau_fence**)* @nouveau_page_flip_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_page_flip_emit(%struct.nouveau_channel* %0, %struct.nouveau_bo* %1, %struct.nouveau_bo* %2, %struct.nouveau_page_flip_state* %3, %struct.nouveau_fence** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_channel*, align 8
  %8 = alloca %struct.nouveau_bo*, align 8
  %9 = alloca %struct.nouveau_bo*, align 8
  %10 = alloca %struct.nouveau_page_flip_state*, align 8
  %11 = alloca %struct.nouveau_fence**, align 8
  %12 = alloca %struct.nouveau_fence_chan*, align 8
  %13 = alloca %struct.nouveau_drm*, align 8
  %14 = alloca %struct.drm_device*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %7, align 8
  store %struct.nouveau_bo* %1, %struct.nouveau_bo** %8, align 8
  store %struct.nouveau_bo* %2, %struct.nouveau_bo** %9, align 8
  store %struct.nouveau_page_flip_state* %3, %struct.nouveau_page_flip_state** %10, align 8
  store %struct.nouveau_fence** %4, %struct.nouveau_fence*** %11, align 8
  %17 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %18 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %17, i32 0, i32 1
  %19 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %18, align 8
  store %struct.nouveau_fence_chan* %19, %struct.nouveau_fence_chan** %12, align 8
  %20 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %21 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %20, i32 0, i32 0
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %21, align 8
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %13, align 8
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 1
  %25 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  store %struct.drm_device* %25, %struct.drm_device** %14, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i64, i64* %15, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.nouveau_page_flip_state*, %struct.nouveau_page_flip_state** %10, align 8
  %31 = getelementptr inbounds %struct.nouveau_page_flip_state, %struct.nouveau_page_flip_state* %30, i32 0, i32 0
  %32 = load %struct.nouveau_fence_chan*, %struct.nouveau_fence_chan** %12, align 8
  %33 = getelementptr inbounds %struct.nouveau_fence_chan, %struct.nouveau_fence_chan* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  %35 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load i64, i64* %15, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.nouveau_bo*, %struct.nouveau_bo** %8, align 8
  %40 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %44 = call i32 @nouveau_fence_sync(i32 %42, %struct.nouveau_channel* %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %5
  br label %91

48:                                               ; preds = %5
  %49 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %50 = call i32 @RING_SPACE(%struct.nouveau_channel* %49, i32 3)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %91

54:                                               ; preds = %48
  %55 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %56 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.TYPE_4__* @nv_device(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NV_C0, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %65 = load i32, i32* @NvSubSw, align 4
  %66 = load i32, i32* @NV_SW_PAGE_FLIP, align 4
  %67 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %64, i32 %65, i32 %66, i32 1)
  %68 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %69 = call i32 @OUT_RING(%struct.nouveau_channel* %68, i32 0)
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %71 = call i32 @OUT_RING(%struct.nouveau_channel* %70, i32 0)
  br label %81

72:                                               ; preds = %54
  %73 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %74 = load i32, i32* @NV10_SUBCHAN_REF_CNT, align 4
  %75 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %73, i32 0, i32 %74, i32 1)
  %76 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %77 = call i32 @OUT_RING(%struct.nouveau_channel* %76, i32 0)
  %78 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %79 = load i32, i32* @NVSW_SUBCHAN_PAGE_FLIP, align 4
  %80 = call i32 @BEGIN_IMC0(%struct.nouveau_channel* %78, i32 0, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %72, %63
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %83 = call i32 @FIRE_RING(%struct.nouveau_channel* %82)
  %84 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %85 = load %struct.nouveau_fence**, %struct.nouveau_fence*** %11, align 8
  %86 = call i32 @nouveau_fence_new(%struct.nouveau_channel* %84, i32 0, %struct.nouveau_fence** %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %91

90:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %104

91:                                               ; preds = %89, %53, %47
  %92 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %93 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %92, i32 0, i32 0
  %94 = load i64, i64* %15, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load %struct.nouveau_page_flip_state*, %struct.nouveau_page_flip_state** %10, align 8
  %97 = getelementptr inbounds %struct.nouveau_page_flip_state, %struct.nouveau_page_flip_state* %96, i32 0, i32 0
  %98 = call i32 @list_del(i32* %97)
  %99 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 0
  %101 = load i64, i64* %15, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %91, %90
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nouveau_fence_sync(i32, %struct.nouveau_channel*) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local %struct.TYPE_4__* @nv_device(i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NVC0(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @BEGIN_IMC0(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

declare dso_local i32 @nouveau_fence_new(%struct.nouveau_channel*, i32, %struct.nouveau_fence**) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
