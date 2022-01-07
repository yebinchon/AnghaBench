; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_base_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_base_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv50_disp_priv = type { i32 }
%struct.nv50_disp_base = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32)* @nv50_disp_base_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_base_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_disp_priv*, align 8
  %6 = alloca %struct.nv50_disp_base*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %11, %struct.nv50_disp_priv** %5, align 8
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %13 = bitcast %struct.nouveau_object* %12 to i8*
  %14 = bitcast i8* %13 to %struct.nv50_disp_base*
  store %struct.nv50_disp_base* %14, %struct.nv50_disp_base** %6, align 8
  %15 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %16 = call i32 @nv_wr32(%struct.nv50_disp_priv* %15, i32 6357028, i32 0)
  %17 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %18 = call i32 @nv_wr32(%struct.nv50_disp_priv* %17, i32 6357024, i32 0)
  %19 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %6, align 8
  %20 = getelementptr inbounds %struct.nv50_disp_base, %struct.nv50_disp_base* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @nouveau_parent_fini(i32* %20, i32 %21)
  ret i32 %22
}

declare dso_local i32 @nv_wr32(%struct.nv50_disp_priv*, i32, i32) #1

declare dso_local i32 @nouveau_parent_fini(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
