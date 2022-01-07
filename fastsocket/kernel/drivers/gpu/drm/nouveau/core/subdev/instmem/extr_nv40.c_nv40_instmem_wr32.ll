; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv40.c_nv40_instmem_wr32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv40.c_nv40_instmem_wr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv04_instmem_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*, i64, i32)* @nv40_instmem_wr32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_instmem_wr32(%struct.nouveau_object* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv04_instmem_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %9 = bitcast %struct.nouveau_object* %8 to i8*
  %10 = bitcast i8* %9 to %struct.nv04_instmem_priv*
  store %struct.nv04_instmem_priv* %10, %struct.nv04_instmem_priv** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %7, align 8
  %13 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite32_native(i32 %11, i64 %16)
  ret void
}

declare dso_local i32 @iowrite32_native(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
