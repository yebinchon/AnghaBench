; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv50.c_vm_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv50.c_vm_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vma = type { i32 }

@NV_MEM_ACCESS_SYS = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_WO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_vma*, i32, i32, i32)* @vm_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_addr(%struct.nouveau_vma* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nouveau_vma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_vma* %0, %struct.nouveau_vma** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = or i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = shl i32 %11, 40
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 %15, 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nouveau_vma*, %struct.nouveau_vma** %5, align 8
  %20 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NV_MEM_ACCESS_SYS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, 64
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %4
  %29 = load %struct.nouveau_vma*, %struct.nouveau_vma** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NV_MEM_ACCESS_WO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, 8
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
