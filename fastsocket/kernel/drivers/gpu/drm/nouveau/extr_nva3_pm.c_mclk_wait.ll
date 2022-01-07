; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_mclk_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_mclk_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { i32 }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem_exec_func*, i32)* @mclk_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mclk_wait(%struct.nouveau_mem_exec_func* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_mem_exec_func*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nouveau_device* @nouveau_dev(i32 %9)
  store %struct.nouveau_device* %10, %struct.nouveau_device** %5, align 8
  %11 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %12 = call i32 @nv_rd32(%struct.nouveau_device* %11, i32 0)
  store volatile i32 %12, i32* %6, align 4
  %13 = load volatile i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 500
  %16 = sdiv i32 %15, 1000
  %17 = call i32 @udelay(i32 %16)
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
