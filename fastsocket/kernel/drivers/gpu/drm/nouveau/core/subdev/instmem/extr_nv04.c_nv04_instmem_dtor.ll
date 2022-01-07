; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv04.c_nv04_instmem_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv04.c_nv04_instmem_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv04_instmem_priv = type { i32, i64, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv04_instmem_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nv04_instmem_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %4 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %5 = bitcast %struct.nouveau_object* %4 to i8*
  %6 = bitcast i8* %5 to %struct.nv04_instmem_priv*
  store %struct.nv04_instmem_priv* %6, %struct.nv04_instmem_priv** %3, align 8
  %7 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %7, i32 0, i32 6
  %9 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %8)
  %10 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %3, align 8
  %11 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %10, i32 0, i32 5
  %12 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %11)
  %13 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %3, align 8
  %14 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %13, i32 0, i32 4
  %15 = call i32 @nouveau_ramht_ref(i32* null, i32* %14)
  %16 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %3, align 8
  %17 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %16, i32 0, i32 3
  %18 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %17)
  %19 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %3, align 8
  %20 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %19, i32 0, i32 2
  %21 = call i32 @nouveau_mm_fini(i32* %20)
  %22 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %3, align 8
  %23 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %3, align 8
  %28 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iounmap(i64 %29)
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %3, align 8
  %33 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %32, i32 0, i32 0
  %34 = call i32 @nouveau_instmem_destroy(i32* %33)
  ret void
}

declare dso_local i32 @nouveau_gpuobj_ref(i32*, i32*) #1

declare dso_local i32 @nouveau_ramht_ref(i32*, i32*) #1

declare dso_local i32 @nouveau_mm_fini(i32*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @nouveau_instmem_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
