; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_mclk_mrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_mclk_mrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { %struct.nv50_pm_state*, i32 }
%struct.nv50_pm_state = type { %struct.hwsq_ucode }
%struct.hwsq_ucode = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem_exec_func*, i32, i32)* @mclk_mrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mclk_mrs(%struct.nouveau_mem_exec_func* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_mem_exec_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_device*, align 8
  %8 = alloca %struct.nouveau_fb*, align 8
  %9 = alloca %struct.nv50_pm_state*, align 8
  %10 = alloca %struct.hwsq_ucode*, align 8
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nouveau_device* @nouveau_dev(i32 %13)
  store %struct.nouveau_device* %14, %struct.nouveau_device** %7, align 8
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %16 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device* %15)
  store %struct.nouveau_fb* %16, %struct.nouveau_fb** %8, align 8
  %17 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %18 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %17, i32 0, i32 0
  %19 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %18, align 8
  store %struct.nv50_pm_state* %19, %struct.nv50_pm_state** %9, align 8
  %20 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %9, align 8
  %21 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %20, i32 0, i32 0
  store %struct.hwsq_ucode* %21, %struct.hwsq_ucode** %10, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %10, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 0
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 1049288, %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %31, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %10, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 0
  %42 = mul nsw i32 %41, 4
  %43 = add nsw i32 1049280, %42
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %39, i32 %43, i32 %44)
  br label %72

46:                                               ; preds = %3
  %47 = load i32, i32* %5, align 4
  %48 = icmp sle i32 %47, 3
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %51 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %10, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 2
  %59 = mul nsw i32 %58, 4
  %60 = add nsw i32 1049320, %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %56, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %49
  %64 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %10, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, 2
  %67 = mul nsw i32 %66, 4
  %68 = add nsw i32 1049312, %67
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %64, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %46
  br label %72

72:                                               ; preds = %71, %38
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device*) #1

declare dso_local i32 @hwsq_wr32(%struct.hwsq_ucode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
