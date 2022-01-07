; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_pm.c_prog_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_pm.c_prog_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_pm_clock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_device = type { i64 }
%struct.nouveau_clock = type { i32 (%struct.nouveau_clock*, i32, i32*)* }

@NV_40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nv04_pm_clock*)* @prog_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prog_pll(%struct.drm_device* %0, %struct.nv04_pm_clock* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nv04_pm_clock*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca %struct.nouveau_clock*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nv04_pm_clock* %1, %struct.nv04_pm_clock** %4, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %8)
  store %struct.nouveau_device* %9, %struct.nouveau_device** %5, align 8
  %10 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %11 = call %struct.nouveau_clock* @nouveau_clock(%struct.nouveau_device* %10)
  store %struct.nouveau_clock* %11, %struct.nouveau_clock** %6, align 8
  %12 = load %struct.nv04_pm_clock*, %struct.nv04_pm_clock** %4, align 8
  %13 = getelementptr inbounds %struct.nv04_pm_clock, %struct.nv04_pm_clock* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NV_40, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.nouveau_clock*, %struct.nouveau_clock** %6, align 8
  %26 = getelementptr inbounds %struct.nouveau_clock, %struct.nouveau_clock* %25, i32 0, i32 0
  %27 = load i32 (%struct.nouveau_clock*, i32, i32*)*, i32 (%struct.nouveau_clock*, i32, i32*)** %26, align 8
  %28 = load %struct.nouveau_clock*, %struct.nouveau_clock** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.nv04_pm_clock*, %struct.nv04_pm_clock** %4, align 8
  %31 = getelementptr inbounds %struct.nv04_pm_clock, %struct.nv04_pm_clock* %30, i32 0, i32 0
  %32 = call i32 %27(%struct.nouveau_clock* %28, i32 %29, i32* %31)
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_clock* @nouveau_clock(%struct.nouveau_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
