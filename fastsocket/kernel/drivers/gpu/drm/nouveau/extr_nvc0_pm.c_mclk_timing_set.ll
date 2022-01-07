; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_mclk_timing_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_pm.c_mclk_timing_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { %struct.nvc0_pm_state*, i32 }
%struct.nvc0_pm_state = type { %struct.nouveau_pm_level* }
%struct.nouveau_pm_level = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem_exec_func*)* @mclk_timing_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mclk_timing_set(%struct.nouveau_mem_exec_func* %0) #0 {
  %2 = alloca %struct.nouveau_mem_exec_func*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca %struct.nvc0_pm_state*, align 8
  %5 = alloca %struct.nouveau_pm_level*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %2, align 8
  %7 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %8 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.nouveau_device* @nouveau_dev(i32 %9)
  store %struct.nouveau_device* %10, %struct.nouveau_device** %3, align 8
  %11 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %12 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 0
  %13 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %12, align 8
  store %struct.nvc0_pm_state* %13, %struct.nvc0_pm_state** %4, align 8
  %14 = load %struct.nvc0_pm_state*, %struct.nvc0_pm_state** %4, align 8
  %15 = getelementptr inbounds %struct.nvc0_pm_state, %struct.nvc0_pm_state* %14, i32 0, i32 0
  %16 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %15, align 8
  store %struct.nouveau_pm_level* %16, %struct.nouveau_pm_level** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %34, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 5
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 4
  %24 = add nsw i32 1110672, %23
  %25 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %26 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nv_wr32(%struct.nouveau_device* %21, i32 %24, i32 %32)
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %17

37:                                               ; preds = %17
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
