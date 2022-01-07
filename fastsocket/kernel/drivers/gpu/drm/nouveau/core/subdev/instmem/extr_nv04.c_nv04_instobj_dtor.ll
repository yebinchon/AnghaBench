; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv04.c_nv04_instobj_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv04.c_nv04_instobj_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv04_instmem_priv = type { i32 }
%struct.nv04_instobj_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*)* @nv04_instobj_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_instobj_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nv04_instmem_priv*, align 8
  %4 = alloca %struct.nv04_instobj_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %5 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.nv04_instmem_priv*
  store %struct.nv04_instmem_priv* %9, %struct.nv04_instmem_priv** %3, align 8
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %11 = bitcast %struct.nouveau_object* %10 to i8*
  %12 = bitcast i8* %11 to %struct.nv04_instobj_priv*
  store %struct.nv04_instobj_priv* %12, %struct.nv04_instobj_priv** %4, align 8
  %13 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %3, align 8
  %14 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %13, i32 0, i32 0
  %15 = load %struct.nv04_instobj_priv*, %struct.nv04_instobj_priv** %4, align 8
  %16 = getelementptr inbounds %struct.nv04_instobj_priv, %struct.nv04_instobj_priv* %15, i32 0, i32 1
  %17 = call i32 @nouveau_mm_free(i32* %14, i32* %16)
  %18 = load %struct.nv04_instobj_priv*, %struct.nv04_instobj_priv** %4, align 8
  %19 = getelementptr inbounds %struct.nv04_instobj_priv, %struct.nv04_instobj_priv* %18, i32 0, i32 0
  %20 = call i32 @nouveau_instobj_destroy(i32* %19)
  ret void
}

declare dso_local i32 @nouveau_mm_free(i32*, i32*) #1

declare dso_local i32 @nouveau_instobj_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
