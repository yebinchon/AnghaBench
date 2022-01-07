; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nvc0.c_nvc0_bar_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nvc0.c_nvc0_bar_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nvc0_bar_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*)* @nvc0_bar_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_bar_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nvc0_bar_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %4 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %5 = bitcast %struct.nouveau_object* %4 to i8*
  %6 = bitcast i8* %5 to %struct.nvc0_bar_priv*
  store %struct.nvc0_bar_priv* %6, %struct.nvc0_bar_priv** %3, align 8
  %7 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %13 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nouveau_vm_ref(i32* null, %struct.TYPE_6__** %11, i32 %17)
  %19 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %20 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %23)
  %25 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %26 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %29)
  %31 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %32 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %1
  %39 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %40 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %50)
  %52 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %53 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %58 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nouveau_vm_ref(i32* null, %struct.TYPE_6__** %56, i32 %62)
  br label %64

64:                                               ; preds = %38, %1
  %65 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %66 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %69)
  %71 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %72 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %75)
  %77 = load %struct.nvc0_bar_priv*, %struct.nvc0_bar_priv** %3, align 8
  %78 = getelementptr inbounds %struct.nvc0_bar_priv, %struct.nvc0_bar_priv* %77, i32 0, i32 0
  %79 = call i32 @nouveau_bar_destroy(i32* %78)
  ret void
}

declare dso_local i32 @nouveau_vm_ref(i32*, %struct.TYPE_6__**, i32) #1

declare dso_local i32 @nouveau_gpuobj_ref(i32*, i32*) #1

declare dso_local i32 @nouveau_bar_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
