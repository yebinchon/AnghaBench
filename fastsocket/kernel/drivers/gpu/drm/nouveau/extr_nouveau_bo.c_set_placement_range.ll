; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_set_placement_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_set_placement_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@NV_10 = common dso_local global i64 0, align 8
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@NOUVEAU_GEM_TILE_ZETA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_bo*, i32)* @set_placement_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_placement_range(%struct.nouveau_bo* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_bo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_fb*, align 8
  %7 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nouveau_drm* @nouveau_bdev(i32 %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %5, align 8
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nouveau_fb* @nouveau_fb(i32 %15)
  store %struct.nouveau_fb* %16, %struct.nouveau_fb** %6, align 8
  %17 = load %struct.nouveau_fb*, %struct.nouveau_fb** %6, align 8
  %18 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_10__* @nv_device(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NV_10, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %2
  %32 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %33 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  %42 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %43 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %47, 4
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %41
  %51 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %52 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NOUVEAU_GEM_TILE_ZETA, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = sdiv i32 %58, 2
  %60 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %61 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %64 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 4
  br label %75

66:                                               ; preds = %50
  %67 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %68 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sdiv i32 %70, 2
  %72 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %73 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %66, %57
  br label %76

76:                                               ; preds = %75, %41, %36, %31, %2
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(i32) #1

declare dso_local %struct.TYPE_10__* @nv_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
