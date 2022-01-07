; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_dmac_object_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_dmac_object_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_base = type { i32 }
%struct.nv50_disp_chan = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, i32)* @nvd0_disp_dmac_object_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_disp_dmac_object_attach(%struct.nouveau_object* %0, %struct.nouveau_object* %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_disp_base*, align 8
  %8 = alloca %struct.nv50_disp_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %12 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv50_disp_base*
  store %struct.nv50_disp_base* %15, %struct.nv50_disp_base** %7, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %17 = bitcast %struct.nouveau_object* %16 to i8*
  %18 = bitcast i8* %17 to %struct.nv50_disp_chan*
  store %struct.nv50_disp_chan* %18, %struct.nv50_disp_chan** %8, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %20 = call %struct.TYPE_4__* @nv_gpuobj(%struct.nouveau_object* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %8, align 8
  %26 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 27
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 9
  %31 = or i32 %28, %30
  %32 = or i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %7, align 8
  %34 = getelementptr inbounds %struct.nv50_disp_base, %struct.nv50_disp_base* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %8, align 8
  %37 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @nouveau_ramht_insert(i32 %35, i32 %38, i32 %39, i32 %40)
  ret i32 %41
}

declare dso_local %struct.TYPE_4__* @nv_gpuobj(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_ramht_insert(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
