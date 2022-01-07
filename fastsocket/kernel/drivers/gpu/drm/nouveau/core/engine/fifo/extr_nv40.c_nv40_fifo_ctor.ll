; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv40.c_nv40_fifo_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv40.c_nv40_fifo_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv04_instmem_priv = type { i32, i32, i32 }
%struct.nv04_fifo_priv = type { i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@nv04_fifo_intr = common dso_local global i32 0, align 4
@nv40_fifo_cclass = common dso_local global i32 0, align 4
@nv40_fifo_sclass = common dso_local global i32 0, align 4
@nv04_fifo_pause = common dso_local global i32 0, align 4
@nv04_fifo_start = common dso_local global i32 0, align 4
@nv40_ramfc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv40_fifo_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fifo_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv04_instmem_priv*, align 8
  %15 = alloca %struct.nv04_fifo_priv*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %18 = call %struct.nv04_instmem_priv* @nv04_instmem(%struct.nouveau_object* %17)
  store %struct.nv04_instmem_priv* %18, %struct.nv04_instmem_priv** %14, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %21 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %22 = call i32 @nouveau_fifo_create(%struct.nouveau_object* %19, %struct.nouveau_object* %20, %struct.nouveau_oclass* %21, i32 0, i32 31, %struct.nv04_fifo_priv** %15)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %24 = call %struct.nouveau_object* @nv_object(%struct.nv04_fifo_priv* %23)
  %25 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %24, %struct.nouveau_object** %25, align 8
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %7, align 4
  br label %74

30:                                               ; preds = %6
  %31 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %32 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %35 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %34, i32 0, i32 4
  %36 = call i32 @nouveau_ramht_ref(i32 %33, i32* %35)
  %37 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %38 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %41 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %40, i32 0, i32 3
  %42 = call i32 @nouveau_gpuobj_ref(i32 %39, i32* %41)
  %43 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %44 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %47 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %46, i32 0, i32 2
  %48 = call i32 @nouveau_gpuobj_ref(i32 %45, i32* %47)
  %49 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %50 = call %struct.TYPE_5__* @nv_subdev(%struct.nv04_fifo_priv* %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 256, i32* %51, align 4
  %52 = load i32, i32* @nv04_fifo_intr, align 4
  %53 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %54 = call %struct.TYPE_5__* @nv_subdev(%struct.nv04_fifo_priv* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %57 = call %struct.TYPE_6__* @nv_engine(%struct.nv04_fifo_priv* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32* @nv40_fifo_cclass, i32** %58, align 8
  %59 = load i32, i32* @nv40_fifo_sclass, align 4
  %60 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %61 = call %struct.TYPE_6__* @nv_engine(%struct.nv04_fifo_priv* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @nv04_fifo_pause, align 4
  %64 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %65 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @nv04_fifo_start, align 4
  %68 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %69 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @nv40_ramfc, align 4
  %72 = load %struct.nv04_fifo_priv*, %struct.nv04_fifo_priv** %15, align 8
  %73 = getelementptr inbounds %struct.nv04_fifo_priv, %struct.nv04_fifo_priv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %30, %28
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local %struct.nv04_instmem_priv* @nv04_instmem(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_fifo_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, %struct.nv04_fifo_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv04_fifo_priv*) #1

declare dso_local i32 @nouveau_ramht_ref(i32, i32*) #1

declare dso_local i32 @nouveau_gpuobj_ref(i32, i32*) #1

declare dso_local %struct.TYPE_5__* @nv_subdev(%struct.nv04_fifo_priv*) #1

declare dso_local %struct.TYPE_6__* @nv_engine(%struct.nv04_fifo_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
