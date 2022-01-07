; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_display_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_display_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv50_disp = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_display_destroy(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nv50_disp*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call %struct.nv50_disp* @nv50_disp(%struct.drm_device* %4)
  store %struct.nv50_disp* %5, %struct.nv50_disp** %3, align 8
  %6 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @nv50_dmac_destroy(i32 %8, i32* %11)
  %13 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %14 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @nouveau_bo_unmap(i64 %15)
  %17 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %18 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %23 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @nouveau_bo_unpin(i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %28 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %27, i32 0, i32 0
  %29 = call i32 @nouveau_bo_ref(i32* null, i64* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = call %struct.TYPE_4__* @nouveau_display(%struct.drm_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.nv50_disp*, %struct.nv50_disp** %3, align 8
  %34 = call i32 @kfree(%struct.nv50_disp* %33)
  ret void
}

declare dso_local %struct.nv50_disp* @nv50_disp(%struct.drm_device*) #1

declare dso_local i32 @nv50_dmac_destroy(i32, i32*) #1

declare dso_local i32 @nouveau_bo_unmap(i64) #1

declare dso_local i32 @nouveau_bo_unpin(i64) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i64*) #1

declare dso_local %struct.TYPE_4__* @nouveau_display(%struct.drm_device*) #1

declare dso_local i32 @kfree(%struct.nv50_disp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
