; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv17_graph_mthd_lma_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv17_graph_mthd_lma_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv10_graph_chan = type { i32 }
%struct.nv10_graph_priv = type { i32 }

@NV10_PGRAPH_DEBUG_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, i8*, i32)* @nv17_graph_mthd_lma_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_graph_mthd_lma_enable(%struct.nouveau_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.nouveau_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nv10_graph_chan*, align 8
  %10 = alloca %struct.nv10_graph_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv10_graph_chan*
  store %struct.nv10_graph_chan* %15, %struct.nv10_graph_chan** %9, align 8
  %16 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %9, align 8
  %17 = call %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan* %16)
  store %struct.nv10_graph_priv* %17, %struct.nv10_graph_priv** %10, align 8
  %18 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %10, align 8
  %19 = call i32 @nv04_graph_idle(%struct.nv10_graph_priv* %18)
  %20 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %10, align 8
  %21 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %22 = call i32 @nv_mask(%struct.nv10_graph_priv* %20, i32 %21, i32 256, i32 256)
  %23 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %10, align 8
  %24 = call i32 @nv_mask(%struct.nv10_graph_priv* %23, i32 4196016, i32 134217728, i32 134217728)
  ret i32 0
}

declare dso_local %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan*) #1

declare dso_local i32 @nv04_graph_idle(%struct.nv10_graph_priv*) #1

declare dso_local i32 @nv_mask(%struct.nv10_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
