; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_mclk_timing_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_mclk_timing_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { %struct.nv50_pm_state*, i32 }
%struct.nv50_pm_state = type { %struct.hwsq_ucode, %struct.nouveau_pm_level* }
%struct.hwsq_ucode = type { i32 }
%struct.nouveau_pm_level = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem_exec_func*)* @mclk_timing_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mclk_timing_set(%struct.nouveau_mem_exec_func* %0) #0 {
  %2 = alloca %struct.nouveau_mem_exec_func*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca %struct.nv50_pm_state*, align 8
  %5 = alloca %struct.nouveau_pm_level*, align 8
  %6 = alloca %struct.hwsq_ucode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %2, align 8
  %10 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.nouveau_device* @nouveau_dev(i32 %12)
  store %struct.nouveau_device* %13, %struct.nouveau_device** %3, align 8
  %14 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %15 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %14, i32 0, i32 0
  %16 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %15, align 8
  store %struct.nv50_pm_state* %16, %struct.nv50_pm_state** %4, align 8
  %17 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %4, align 8
  %18 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %17, i32 0, i32 1
  %19 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %18, align 8
  store %struct.nouveau_pm_level* %19, %struct.nouveau_pm_level** %5, align 8
  %20 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %4, align 8
  %21 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %20, i32 0, i32 0
  store %struct.hwsq_ucode* %21, %struct.hwsq_ucode** %6, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %55, %1
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 9
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 1049120, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @nv_rd32(%struct.nouveau_device* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %34 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %32, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %25
  %43 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %46 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %43, i32 %44, i32 %52)
  br label %54

54:                                               ; preds = %42, %25
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %22

58:                                               ; preds = %22
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @hwsq_wr32(%struct.hwsq_ucode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
