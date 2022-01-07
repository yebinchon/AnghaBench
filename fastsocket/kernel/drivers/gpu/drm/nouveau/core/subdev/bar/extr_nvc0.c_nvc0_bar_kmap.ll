; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nvc0.c_nvc0_bar_kmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nvc0.c_nvc0_bar_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bar = type { i32 }
%struct.nouveau_mem = type { i32 }
%struct.nouveau_vma = type { i32 }
%struct.nvc0_bar_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bar*, %struct.nouveau_mem*, i32, %struct.nouveau_vma*)* @nvc0_bar_kmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_bar_kmap(%struct.nouveau_bar* %0, %struct.nouveau_mem* %1, i32 %2, %struct.nouveau_vma* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_bar*, align 8
  %7 = alloca %struct.nouveau_mem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_vma*, align 8
  %10 = alloca %struct.nvc0_bar_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.nouveau_bar* %0, %struct.nouveau_bar** %6, align 8
  store %struct.nouveau_mem* %1, %struct.nouveau_mem** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nouveau_vma* %3, %struct.nouveau_vma** %9, align 8
  %12 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %13 = bitcast %struct.nouveau_bar* %12 to i8*
  %14 = bitcast i8* %13 to %struct.nvc0_bar_priv*
  store %struct.nvc0_bar_priv* %14, %struct.nvc0_bar_priv** %10, align 8
  %15 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %10, align 8
  %16 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nouveau_mem*, %struct.nouveau_mem** %7, align 8
  %22 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 12
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %27 = call i32 @nouveau_vm_get(i32 %20, i32 %24, i32 12, i32 %25, %struct.nouveau_vma* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %47

32:                                               ; preds = %4
  %33 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %34 = load %struct.nouveau_mem*, %struct.nouveau_mem** %7, align 8
  %35 = call i32 @nouveau_vm_map(%struct.nouveau_vma* %33, %struct.nouveau_mem* %34)
  %36 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %37 = call i32 @nv_subdev(%struct.nouveau_bar* %36)
  %38 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %10, align 8
  %39 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nvc0_vm_flush_engine(i32 %37, i32 %45, i32 5)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %32, %30
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @nouveau_vm_get(i32, i32, i32, i32, %struct.nouveau_vma*) #1

declare dso_local i32 @nouveau_vm_map(%struct.nouveau_vma*, %struct.nouveau_mem*) #1

declare dso_local i32 @nvc0_vm_flush_engine(i32, i32, i32) #1

declare dso_local i32 @nv_subdev(%struct.nouveau_bar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
