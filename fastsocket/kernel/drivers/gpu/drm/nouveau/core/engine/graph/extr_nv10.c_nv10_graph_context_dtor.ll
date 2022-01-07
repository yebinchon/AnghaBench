; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_context_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_context_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv10_graph_priv = type { i32, i32** }
%struct.nv10_graph_chan = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*)* @nv10_graph_context_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_graph_context_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nv10_graph_priv*, align 8
  %4 = alloca %struct.nv10_graph_chan*, align 8
  %5 = alloca i64, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %7 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.nv10_graph_priv*
  store %struct.nv10_graph_priv* %10, %struct.nv10_graph_priv** %3, align 8
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %12 = bitcast %struct.nouveau_object* %11 to i8*
  %13 = bitcast i8* %12 to %struct.nv10_graph_chan*
  store %struct.nv10_graph_chan* %13, %struct.nv10_graph_chan** %4, align 8
  %14 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %15 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %19 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %4, align 8
  %22 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32*, i32** %20, i64 %23
  store i32* null, i32** %24, align 8
  %25 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %26 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %4, align 8
  %30 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %29, i32 0, i32 1
  %31 = call i32 @nouveau_object_destroy(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nouveau_object_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
