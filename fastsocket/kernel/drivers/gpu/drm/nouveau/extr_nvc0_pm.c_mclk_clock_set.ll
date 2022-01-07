; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_mclk_clock_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_mclk_clock_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { %struct.nvc0_pm_state*, i32 }
%struct.nvc0_pm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem_exec_func*)* @mclk_clock_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mclk_clock_set(%struct.nouveau_mem_exec_func* %0) #0 {
  %2 = alloca %struct.nouveau_mem_exec_func*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca %struct.nvc0_pm_state*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %2, align 8
  %6 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %7 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.nouveau_device* @nouveau_dev(i32 %8)
  store %struct.nouveau_device* %9, %struct.nouveau_device** %3, align 8
  %10 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %10, i32 0, i32 0
  %12 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %11, align 8
  store %struct.nvc0_pm_state* %12, %struct.nvc0_pm_state** %4, align 8
  %13 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %14 = call i32 @nv_rd32(%struct.nouveau_device* %13, i32 1253376)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %16 = call i32 @nv_wr32(%struct.nouveau_device* %15, i32 1274720, i32 1)
  %17 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %18 = call i32 @nv_wr32(%struct.nouveau_device* %17, i32 1274736, i32 0)
  %19 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %20 = call i32 @nv_wr32(%struct.nouveau_device* %19, i32 1274752, i32 0)
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, -2
  store i32 %27, i32* %5, align 4
  %28 = call i32 @nv_wr32(%struct.nouveau_device* %25, i32 1253376, i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %31 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %4, align 8
  %32 = getelementptr inbounds %struct.nvc0_pm_state, %struct.nvc0_pm_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nv_wr32(%struct.nouveau_device* %30, i32 1253380, i32 %34)
  %36 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = call i32 @nv_wr32(%struct.nouveau_device* %36, i32 1253376, i32 %38)
  %40 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %41 = call i32 @nv_wait(%struct.nouveau_device* %40, i32 1274768, i32 2, i32 2)
  %42 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %43 = call i32 @nv_wr32(%struct.nouveau_device* %42, i32 1253400, i32 20480)
  %44 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %45 = call i32 @nv_wr32(%struct.nouveau_device* %44, i32 1274736, i32 1)
  %46 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %47 = call i32 @nv_wr32(%struct.nouveau_device* %46, i32 1274752, i32 1)
  %48 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %49 = call i32 @nv_wr32(%struct.nouveau_device* %48, i32 1274720, i32 0)
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
