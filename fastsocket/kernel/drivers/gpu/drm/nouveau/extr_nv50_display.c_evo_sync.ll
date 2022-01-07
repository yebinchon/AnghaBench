; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_evo_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_evo_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nv50_disp = type { i32 }
%struct.nv50_mast = type { i32 }

@EVO_MAST_NTFY = common dso_local global i32 0, align 4
@evo_sync_wait = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @evo_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evo_sync(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_device*, align 8
  %5 = alloca %struct.nv50_disp*, align 8
  %6 = alloca %struct.nv50_mast*, align 8
  %7 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %8)
  store %struct.nouveau_device* %9, %struct.nouveau_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call %struct.nv50_disp* @nv50_disp(%struct.drm_device* %10)
  store %struct.nv50_disp* %11, %struct.nv50_disp** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call %struct.nv50_mast* @nv50_mast(%struct.drm_device* %12)
  store %struct.nv50_mast* %13, %struct.nv50_mast** %6, align 8
  %14 = load %struct.nv50_mast*, %struct.nv50_mast** %6, align 8
  %15 = call i32* @evo_wait(%struct.nv50_mast* %14, i32 8)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %1
  %19 = load %struct.nv50_disp*, %struct.nv50_disp** %5, align 8
  %20 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EVO_MAST_NTFY, align 4
  %23 = call i32 @nouveau_bo_wr32(i32 %21, i32 %22, i32 0)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @evo_mthd(i32* %24, i32 132, i32 1)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @EVO_MAST_NTFY, align 4
  %28 = or i32 -2147483648, %27
  %29 = call i32 @evo_data(i32* %26, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @evo_mthd(i32* %30, i32 128, i32 2)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @evo_data(i32* %32, i32 0)
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @evo_data(i32* %34, i32 0)
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.nv50_mast*, %struct.nv50_mast** %6, align 8
  %38 = call i32 @evo_kick(i32* %36, %struct.nv50_mast* %37)
  %39 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %40 = load i32, i32* @evo_sync_wait, align 4
  %41 = load %struct.nv50_disp*, %struct.nv50_disp** %5, align 8
  %42 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nv_wait_cb(%struct.nouveau_device* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %51

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %46
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nv50_disp* @nv50_disp(%struct.drm_device*) #1

declare dso_local %struct.nv50_mast* @nv50_mast(%struct.drm_device*) #1

declare dso_local i32* @evo_wait(%struct.nv50_mast*, i32) #1

declare dso_local i32 @nouveau_bo_wr32(i32, i32, i32) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_mast*) #1

declare dso_local i64 @nv_wait_cb(%struct.nouveau_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
