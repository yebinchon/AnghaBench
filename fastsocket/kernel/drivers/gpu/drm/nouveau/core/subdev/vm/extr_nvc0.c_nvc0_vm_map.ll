; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nvc0.c_nvc0_vm_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nvc0.c_nvc0_vm_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vma = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_mem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_vma*, %struct.nouveau_gpuobj*, %struct.nouveau_mem*, i32, i32, i32, i32)* @nvc0_vm_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_vm_map(%struct.nouveau_vma* %0, %struct.nouveau_gpuobj* %1, %struct.nouveau_mem* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nouveau_vma*, align 8
  %9 = alloca %struct.nouveau_gpuobj*, align 8
  %10 = alloca %struct.nouveau_mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_vma* %0, %struct.nouveau_vma** %8, align 8
  store %struct.nouveau_gpuobj* %1, %struct.nouveau_gpuobj** %9, align 8
  store %struct.nouveau_mem* %2, %struct.nouveau_mem** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %17 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 8
  %22 = shl i32 1, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %26 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nvc0_vm_addr(%struct.nouveau_vma* %23, i32 %24, i32 %27, i32 0)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = shl i32 %29, 3
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %35, %7
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %12, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 0
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @lower_32_bits(i32 %39)
  %41 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %36, i32 %38, i32 %40)
  %42 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %42, i32 %44, i32 %46)
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 8
  store i32 %52, i32* %11, align 4
  br label %31

53:                                               ; preds = %31
  ret void
}

declare dso_local i32 @nvc0_vm_addr(%struct.nouveau_vma*, i32, i32, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
