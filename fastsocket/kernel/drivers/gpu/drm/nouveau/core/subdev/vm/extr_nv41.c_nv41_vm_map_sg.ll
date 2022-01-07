; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv41.c_nv41_vm_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv41.c_nv41_vm_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vma = type { i32 }
%struct.nouveau_gpuobj = type { i32 }
%struct.nouveau_mem = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NV41_GART_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_vma*, %struct.nouveau_gpuobj*, %struct.nouveau_mem*, i32, i32, i32*)* @nv41_vm_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv41_vm_map_sg(%struct.nouveau_vma* %0, %struct.nouveau_gpuobj* %1, %struct.nouveau_mem* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.nouveau_vma*, align 8
  %8 = alloca %struct.nouveau_gpuobj*, align 8
  %9 = alloca %struct.nouveau_mem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nouveau_vma* %0, %struct.nouveau_vma** %7, align 8
  store %struct.nouveau_gpuobj* %1, %struct.nouveau_gpuobj** %8, align 8
  store %struct.nouveau_mem* %2, %struct.nouveau_mem** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32, i32* %10, align 4
  %16 = mul nsw i32 %15, 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %50, %6
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @NV41_GART_PAGE, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %12, align 8
  %26 = load i32, i32* %24, align 4
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %36, %20
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %13, align 4
  %33 = icmp ne i32 %31, 0
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %14, align 4
  %40 = ashr i32 %39, 7
  %41 = or i32 %40, 1
  %42 = call i32 @nv_wo32(%struct.nouveau_gpuobj* %37, i32 %38, i32 %41)
  %43 = load i32, i32* @NV41_GART_PAGE, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %27

50:                                               ; preds = %34
  br label %17

51:                                               ; preds = %17
  ret void
}

declare dso_local i32 @nv_wo32(%struct.nouveau_gpuobj*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
