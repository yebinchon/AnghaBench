; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nv50.c_nv50_bar_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_nv50.c_nv50_bar_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_bar_priv = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*)* @nv50_bar_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_bar_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nv50_bar_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %4 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %5 = bitcast %struct.nouveau_object* %4 to i8*
  %6 = bitcast i8* %5 to %struct.nv50_bar_priv*
  store %struct.nv50_bar_priv* %6, %struct.nv50_bar_priv** %3, align 8
  %7 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %7, i32 0, i32 7
  %9 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %8)
  %10 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %11 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %10, i32 0, i32 6
  %12 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %13 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nouveau_vm_ref(i32* null, %struct.TYPE_4__** %11, i32 %14)
  %16 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %17 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %16, i32 0, i32 5
  %18 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %17)
  %19 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %20 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %25 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %32)
  %34 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %35 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %34, i32 0, i32 4
  %36 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %37 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nouveau_vm_ref(i32* null, %struct.TYPE_4__** %35, i32 %38)
  br label %40

40:                                               ; preds = %23, %1
  %41 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %42 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %41, i32 0, i32 3
  %43 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %42)
  %44 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %45 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %44, i32 0, i32 2
  %46 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %45)
  %47 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %48 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %47, i32 0, i32 1
  %49 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %48)
  %50 = load %struct.nv50_bar_priv*, %struct.nv50_bar_priv** %3, align 8
  %51 = getelementptr inbounds %struct.nv50_bar_priv, %struct.nv50_bar_priv* %50, i32 0, i32 0
  %52 = call i32 @nouveau_bar_destroy(i32* %51)
  ret void
}

declare dso_local i32 @nouveau_gpuobj_ref(i32*, i32*) #1

declare dso_local i32 @nouveau_vm_ref(i32*, %struct.TYPE_4__**, i32) #1

declare dso_local i32 @nouveau_bar_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
