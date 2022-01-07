; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_set_ctx1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_set_ctx1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv04_graph_priv = type { i32 }

@NV04_PGRAPH_TRAPPED_ADDR = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_SWITCH1 = common dso_local global i64 0, align 8
@NV04_PGRAPH_CTX_CACHE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*, i32, i32)* @nv04_graph_set_ctx1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_graph_set_ctx1(%struct.nouveau_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv04_graph_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %11 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.nv04_graph_priv*
  store %struct.nv04_graph_priv* %14, %struct.nv04_graph_priv** %7, align 8
  %15 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %7, align 8
  %16 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %17 = call i32 @nv_rd32(%struct.nv04_graph_priv* %15, i32 %16)
  %18 = ashr i32 %17, 13
  %19 = and i32 %18, 7
  store i32 %19, i32* %8, align 4
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %21 = call i32 @nv_ro32(%struct.nouveau_object* %20, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @nv_wo32(%struct.nouveau_object* %29, i32 0, i32 %30)
  %32 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %7, align 8
  %33 = load i64, i64* @NV04_PGRAPH_CTX_SWITCH1, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @nv_wr32(%struct.nv04_graph_priv* %32, i64 %33, i32 %34)
  %36 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %7, align 8
  %37 = load i64, i64* @NV04_PGRAPH_CTX_CACHE1, align 8
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @nv_wr32(%struct.nv04_graph_priv* %36, i64 %41, i32 %42)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv04_graph_priv*, i32) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_object*, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv04_graph_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
