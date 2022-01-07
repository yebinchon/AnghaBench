; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv41.c_nv41_vmmgr_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv41.c_nv41_vmmgr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv04_vmmgr_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nouveau_gpuobj** }
%struct.nouveau_gpuobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv41_vmmgr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv41_vmmgr_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv04_vmmgr_priv*, align 8
  %5 = alloca %struct.nouveau_gpuobj*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = bitcast %struct.nouveau_object* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nv04_vmmgr_priv*
  store %struct.nv04_vmmgr_priv* %9, %struct.nv04_vmmgr_priv** %4, align 8
  %10 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %11 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nouveau_gpuobj**, %struct.nouveau_gpuobj*** %16, align 8
  %18 = getelementptr inbounds %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %17, i64 0
  %19 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %18, align 8
  store %struct.nouveau_gpuobj* %19, %struct.nouveau_gpuobj** %5, align 8
  %20 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %21 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %20, i32 0, i32 0
  %22 = call i32 @nouveau_vmmgr_init(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %38

27:                                               ; preds = %1
  %28 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %29 = load %struct.nouveau_gpuobj*, %struct.nouveau_gpuobj** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_gpuobj, %struct.nouveau_gpuobj* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 2
  %33 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %28, i32 1050624, i32 %32)
  %34 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %35 = call i32 @nv_mask(%struct.nv04_vmmgr_priv* %34, i32 1048716, i32 256, i32 256)
  %36 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %4, align 8
  %37 = call i32 @nv_wr32(%struct.nv04_vmmgr_priv* %36, i32 1050656, i32 0)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %27, %25
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @nouveau_vmmgr_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv04_vmmgr_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv04_vmmgr_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
