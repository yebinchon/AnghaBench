; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_mclk_clock_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_mclk_clock_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { %struct.nv50_pm_state*, i32 }
%struct.nv50_pm_state = type { i32, i32, i32, %struct.hwsq_ucode }
%struct.hwsq_ucode = type { i32 }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem_exec_func*)* @mclk_clock_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mclk_clock_set(%struct.nouveau_mem_exec_func* %0) #0 {
  %2 = alloca %struct.nouveau_mem_exec_func*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca %struct.nv50_pm_state*, align 8
  %5 = alloca %struct.hwsq_ucode*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %2, align 8
  %7 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %8 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.nouveau_device* @nouveau_dev(i32 %9)
  store %struct.nouveau_device* %10, %struct.nouveau_device** %3, align 8
  %11 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %12 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 0
  %13 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %12, align 8
  store %struct.nv50_pm_state* %13, %struct.nv50_pm_state** %4, align 8
  %14 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %4, align 8
  %15 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %14, i32 0, i32 3
  store %struct.hwsq_ucode* %15, %struct.hwsq_ucode** %5, align 8
  %16 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %17 = call i8* @nv_rd32(%struct.nouveau_device* %16, i32 16392)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %20 = call i8* @nv_rd32(%struct.nouveau_device* %19, i32 49216)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %4, align 8
  %23 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %4, align 8
  %25 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 1073741823
  store i32 %27, i32* %25, align 4
  %28 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %4, align 8
  %29 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 49152
  store i32 %31, i32* %29, align 4
  %32 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %5, align 8
  %33 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %4, align 8
  %34 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %32, i32 49216, i32 %35)
  %37 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, 512
  %40 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %37, i32 16392, i32 %39)
  %41 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %4, align 8
  %42 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -2147483648
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %5, align 8
  %48 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %4, align 8
  %49 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %47, i32 16396, i32 %50)
  br label %52

52:                                               ; preds = %46, %1
  %53 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %5, align 8
  %54 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %4, align 8
  %55 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %53, i32 16392, i32 %56)
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local i8* @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @hwsq_wr32(%struct.hwsq_ucode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
