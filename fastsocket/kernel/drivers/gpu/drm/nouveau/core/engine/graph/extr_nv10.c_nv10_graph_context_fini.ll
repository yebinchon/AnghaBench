; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_context_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_context_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv10_graph_priv = type { i32 }
%struct.nv10_graph_chan = type { i32 }

@NV04_PGRAPH_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32)* @nv10_graph_context_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_graph_context_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv10_graph_priv*, align 8
  %6 = alloca %struct.nv10_graph_chan*, align 8
  %7 = alloca i64, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nv10_graph_priv*
  store %struct.nv10_graph_priv* %12, %struct.nv10_graph_priv** %5, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %14 = bitcast %struct.nouveau_object* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv10_graph_chan*
  store %struct.nv10_graph_chan* %15, %struct.nv10_graph_chan** %6, align 8
  %16 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %17 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %21 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %22 = call i32 @nv_mask(%struct.nv10_graph_priv* %20, i32 %21, i32 1, i32 0)
  %23 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %24 = call %struct.nv10_graph_chan* @nv10_graph_channel(%struct.nv10_graph_priv* %23)
  %25 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %6, align 8
  %26 = icmp eq %struct.nv10_graph_chan* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %6, align 8
  %29 = call i32 @nv10_graph_unload_context(%struct.nv10_graph_chan* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %32 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %33 = call i32 @nv_mask(%struct.nv10_graph_priv* %31, i32 %32, i32 1, i32 1)
  %34 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %35 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %6, align 8
  %39 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @nouveau_object_fini(i32* %39, i32 %40)
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv_mask(%struct.nv10_graph_priv*, i32, i32, i32) #1

declare dso_local %struct.nv10_graph_chan* @nv10_graph_channel(%struct.nv10_graph_priv*) #1

declare dso_local i32 @nv10_graph_unload_context(%struct.nv10_graph_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nouveau_object_fini(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
