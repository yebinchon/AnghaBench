; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nv04_gart_manager_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nv04_gart_manager_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_mem_reg = type { %struct.nouveau_mem* }
%struct.nouveau_mem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_mem_type_manager*, %struct.ttm_mem_reg*)* @nv04_gart_manager_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_gart_manager_del(%struct.ttm_mem_type_manager* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_mem_type_manager*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.nouveau_mem*, align 8
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %6 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %7 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %6, i32 0, i32 0
  %8 = load %struct.nouveau_mem*, %struct.nouveau_mem** %7, align 8
  store %struct.nouveau_mem* %8, %struct.nouveau_mem** %5, align 8
  %9 = load %struct.nouveau_mem*, %struct.nouveau_mem** %5, align 8
  %10 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.nouveau_mem*, %struct.nouveau_mem** %5, align 8
  %18 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = call i32 @nouveau_vm_put(%struct.TYPE_2__* %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %24 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %23, i32 0, i32 0
  %25 = load %struct.nouveau_mem*, %struct.nouveau_mem** %24, align 8
  %26 = call i32 @kfree(%struct.nouveau_mem* %25)
  %27 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %28 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %27, i32 0, i32 0
  store %struct.nouveau_mem* null, %struct.nouveau_mem** %28, align 8
  ret void
}

declare dso_local i32 @nouveau_vm_put(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.nouveau_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
