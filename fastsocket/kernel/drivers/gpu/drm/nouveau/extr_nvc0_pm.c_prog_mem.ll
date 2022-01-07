; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_prog_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_prog_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvc0_pm_state = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_mem_exec_func = type { %struct.nvc0_pm_state*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_device* }

@mclk_timing_set = common dso_local global i32 0, align 4
@mclk_clock_set = common dso_local global i32 0, align 4
@mclk_mrs = common dso_local global i32 0, align 4
@mclk_mrg = common dso_local global i32 0, align 4
@mclk_wait = common dso_local global i32 0, align 4
@mclk_refresh_self = common dso_local global i32 0, align 4
@mclk_refresh_auto = common dso_local global i32 0, align 4
@mclk_refresh = common dso_local global i32 0, align 4
@mclk_precharge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nvc0_pm_state*)* @prog_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prog_mem(%struct.drm_device* %0, %struct.nvc0_pm_state* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nvc0_pm_state*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca %struct.nouveau_mem_exec_func, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nvc0_pm_state* %1, %struct.nvc0_pm_state** %4, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %7)
  store %struct.nouveau_device* %8, %struct.nouveau_device** %5, align 8
  %9 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 0
  %10 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %4, align 8
  store %struct.nvc0_pm_state* %10, %struct.nvc0_pm_state** %9, align 8
  %11 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 1
  %12 = load i32, i32* @mclk_timing_set, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 2
  %14 = load i32, i32* @mclk_clock_set, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 3
  %16 = load i32, i32* @mclk_mrs, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 4
  %18 = load i32, i32* @mclk_mrg, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 5
  %20 = load i32, i32* @mclk_wait, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 6
  %22 = load i32, i32* @mclk_refresh_self, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 7
  %24 = load i32, i32* @mclk_refresh_auto, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 8
  %26 = load i32, i32* @mclk_refresh, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 9
  %28 = load i32, i32* @mclk_precharge, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 10
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  store %struct.drm_device* %30, %struct.drm_device** %29, align 8
  %31 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %32 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 208
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %37 = call i32 @nv_wr32(%struct.nouveau_device* %36, i32 6361600, i32 13056)
  br label %41

38:                                               ; preds = %2
  %39 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %40 = call i32 @nv_wr32(%struct.nouveau_device* %39, i32 6471680, i32 50528256)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %4, align 8
  %43 = getelementptr inbounds %struct.nvc0_pm_state, %struct.nvc0_pm_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nouveau_mem_exec(%struct.nouveau_mem_exec_func* %6, i32 %44)
  %46 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %47 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 208
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %52 = call i32 @nv_wr32(%struct.nouveau_device* %51, i32 6361600, i32 13104)
  br label %56

53:                                               ; preds = %41
  %54 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %55 = call i32 @nv_wr32(%struct.nouveau_device* %54, i32 6471680, i32 50529024)
  br label %56

56:                                               ; preds = %53, %50
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nouveau_mem_exec(%struct.nouveau_mem_exec_func*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
