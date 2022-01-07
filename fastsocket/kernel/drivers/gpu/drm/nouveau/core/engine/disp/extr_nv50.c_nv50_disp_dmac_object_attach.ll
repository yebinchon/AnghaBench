; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_dmac_object_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_dmac_object_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_base = type { i32 }
%struct.nv50_disp_chan = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, i32)* @nv50_disp_dmac_object_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_dmac_object_attach(%struct.nouveau_object* %0, %struct.nouveau_object* %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_disp_base*, align 8
  %8 = alloca %struct.nv50_disp_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.nv50_disp_base*
  store %struct.nv50_disp_base* %16, %struct.nv50_disp_base** %7, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %18 = bitcast %struct.nouveau_object* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv50_disp_chan*
  store %struct.nv50_disp_chan* %19, %struct.nv50_disp_chan** %8, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %21 = call %struct.TYPE_4__* @nv_gpuobj(%struct.nouveau_object* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %8, align 8
  %27 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 %29, 28
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 %31, 10
  %33 = or i32 %30, %32
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %7, align 8
  %37 = getelementptr inbounds %struct.nv50_disp_base, %struct.nv50_disp_base* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @nouveau_ramht_insert(i32 %38, i32 %39, i32 %40, i32 %41)
  ret i32 %42
}

declare dso_local %struct.TYPE_4__* @nv_gpuobj(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_ramht_insert(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
