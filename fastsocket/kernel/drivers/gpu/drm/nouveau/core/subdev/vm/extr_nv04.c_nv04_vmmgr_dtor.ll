; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv04.c_nv04_vmmgr_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nv04.c_nv04_vmmgr_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv04_vmmgr_priv = type { i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv04_vmmgr_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nv04_vmmgr_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %4 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %5 = bitcast %struct.nouveau_object* %4 to i8*
  %6 = bitcast i8* %5 to %struct.nv04_vmmgr_priv*
  store %struct.nv04_vmmgr_priv* %6, %struct.nv04_vmmgr_priv** %3, align 8
  %7 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %13 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %20)
  %22 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %23 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %22, i32 0, i32 3
  %24 = call i32 @nouveau_vm_ref(i32* null, %struct.TYPE_6__** %23, i32* null)
  br label %25

25:                                               ; preds = %11, %1
  %26 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %27 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %32 = call %struct.TYPE_5__* @nv_device(%struct.nv04_vmmgr_priv* %31)
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %36 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %39 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_free_consistent(i32 %34, i32 16384, i64 %37, i32 %40)
  br label %42

42:                                               ; preds = %30, %25
  %43 = load %struct.nv04_vmmgr_priv*, %struct.nv04_vmmgr_priv** %3, align 8
  %44 = getelementptr inbounds %struct.nv04_vmmgr_priv, %struct.nv04_vmmgr_priv* %43, i32 0, i32 0
  %45 = call i32 @nouveau_vmmgr_destroy(i32* %44)
  ret void
}

declare dso_local i32 @nouveau_gpuobj_ref(i32*, i32*) #1

declare dso_local i32 @nouveau_vm_ref(i32*, %struct.TYPE_6__**, i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_5__* @nv_device(%struct.nv04_vmmgr_priv*) #1

declare dso_local i32 @nouveau_vmmgr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
