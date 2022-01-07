; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_mclk_precharge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_mclk_precharge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { %struct.nv50_pm_state* }
%struct.nv50_pm_state = type { %struct.hwsq_ucode }
%struct.hwsq_ucode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem_exec_func*)* @mclk_precharge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mclk_precharge(%struct.nouveau_mem_exec_func* %0) #0 {
  %2 = alloca %struct.nouveau_mem_exec_func*, align 8
  %3 = alloca %struct.nv50_pm_state*, align 8
  %4 = alloca %struct.hwsq_ucode*, align 8
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %2, align 8
  %5 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %5, i32 0, i32 0
  %7 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %6, align 8
  store %struct.nv50_pm_state* %7, %struct.nv50_pm_state** %3, align 8
  %8 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %3, align 8
  %9 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %8, i32 0, i32 0
  store %struct.hwsq_ucode* %9, %struct.hwsq_ucode** %4, align 8
  %10 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %4, align 8
  %11 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %10, i32 1049300, i32 1)
  ret void
}

declare dso_local i32 @hwsq_wr32(%struct.hwsq_ucode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
