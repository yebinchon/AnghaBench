; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_unload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_drm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @nouveau_drm_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_drm_unload(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %4)
  store %struct.nouveau_drm* %5, %struct.nouveau_drm** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = call i32 @nouveau_fbcon_fini(%struct.drm_device* %6)
  %8 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %9 = call i32 @nouveau_accel_fini(%struct.nouveau_drm* %8)
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call i32 @nouveau_pm_fini(%struct.drm_device* %10)
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = call i32 @nouveau_display_fini(%struct.drm_device* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %22 = call i32 @nouveau_display_destroy(%struct.drm_device* %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = call i32 @nouveau_irq_fini(%struct.drm_device* %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = call i32 @nouveau_bios_takedown(%struct.drm_device* %25)
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %28 = call i32 @nouveau_ttm_fini(%struct.nouveau_drm* %27)
  %29 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %30 = call i32 @nouveau_agp_fini(%struct.nouveau_drm* %29)
  %31 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %32 = call i32 @nouveau_vga_fini(%struct.nouveau_drm* %31)
  %33 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %33, i32 0, i32 0
  %35 = call i32 @nouveau_cli_destroy(i32* %34)
  ret i32 0
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_fbcon_fini(%struct.drm_device*) #1

declare dso_local i32 @nouveau_accel_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_pm_fini(%struct.drm_device*) #1

declare dso_local i32 @nouveau_display_fini(%struct.drm_device*) #1

declare dso_local i32 @nouveau_display_destroy(%struct.drm_device*) #1

declare dso_local i32 @nouveau_irq_fini(%struct.drm_device*) #1

declare dso_local i32 @nouveau_bios_takedown(%struct.drm_device*) #1

declare dso_local i32 @nouveau_ttm_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_agp_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_vga_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_cli_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
