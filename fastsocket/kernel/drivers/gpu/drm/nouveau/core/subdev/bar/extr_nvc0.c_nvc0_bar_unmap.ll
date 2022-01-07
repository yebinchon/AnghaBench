; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nvc0.c_nvc0_bar_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nvc0.c_nvc0_bar_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bar = type { i32 }
%struct.nouveau_vma = type { i64 }
%struct.nvc0_bar_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_bar*, %struct.nouveau_vma*)* @nvc0_bar_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_bar_unmap(%struct.nouveau_bar* %0, %struct.nouveau_vma* %1) #0 {
  %3 = alloca %struct.nouveau_bar*, align 8
  %4 = alloca %struct.nouveau_vma*, align 8
  %5 = alloca %struct.nvc0_bar_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_bar* %0, %struct.nouveau_bar** %3, align 8
  store %struct.nouveau_vma* %1, %struct.nouveau_vma** %4, align 8
  %7 = load %struct.nouveau_bar*, %struct.nouveau_bar** %3, align 8
  %8 = bitcast %struct.nouveau_bar* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nvc0_bar_priv*
  store %struct.nvc0_bar_priv* %9, %struct.nvc0_bar_priv** %5, align 8
  %10 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %11 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %5, align 8
  %14 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %12, %18
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %23 = call i32 @nouveau_vm_unmap(%struct.nouveau_vma* %22)
  %24 = load %struct.nouveau_bar*, %struct.nouveau_bar** %3, align 8
  %25 = call i32 @nv_subdev(%struct.nouveau_bar* %24)
  %26 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %5, align 8
  %27 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @nvc0_vm_flush_engine(i32 %25, i32 %35, i32 5)
  %37 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %38 = call i32 @nouveau_vm_put(%struct.nouveau_vma* %37)
  ret void
}

declare dso_local i32 @nouveau_vm_unmap(%struct.nouveau_vma*) #1

declare dso_local i32 @nvc0_vm_flush_engine(i32, i32, i32) #1

declare dso_local i32 @nv_subdev(%struct.nouveau_bar*) #1

declare dso_local i32 @nouveau_vm_put(%struct.nouveau_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
