; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_context_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_context_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_graph_priv = type { i32, %struct.nv10_graph_chan** }
%struct.nv10_graph_chan = type { i32 }

@NV04_PGRAPH_TRAPPED_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv10_graph_priv*)* @nv10_graph_context_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_graph_context_switch(%struct.nv10_graph_priv* %0) #0 {
  %2 = alloca %struct.nv10_graph_priv*, align 8
  %3 = alloca %struct.nv10_graph_chan*, align 8
  %4 = alloca %struct.nv10_graph_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nv10_graph_priv* %0, %struct.nv10_graph_priv** %2, align 8
  store %struct.nv10_graph_chan* null, %struct.nv10_graph_chan** %3, align 8
  store %struct.nv10_graph_chan* null, %struct.nv10_graph_chan** %4, align 8
  %7 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %2, align 8
  %8 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %2, align 8
  %12 = call i32 @nv04_graph_idle(%struct.nv10_graph_priv* %11)
  %13 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %2, align 8
  %14 = call %struct.nv10_graph_chan* @nv10_graph_channel(%struct.nv10_graph_priv* %13)
  store %struct.nv10_graph_chan* %14, %struct.nv10_graph_chan** %3, align 8
  %15 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %3, align 8
  %16 = icmp ne %struct.nv10_graph_chan* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %3, align 8
  %19 = call i32 @nv10_graph_unload_context(%struct.nv10_graph_chan* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %2, align 8
  %22 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %23 = call i32 @nv_rd32(%struct.nv10_graph_priv* %21, i32 %22)
  %24 = ashr i32 %23, 20
  %25 = and i32 %24, 31
  store i32 %25, i32* %6, align 4
  %26 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %2, align 8
  %27 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %26, i32 0, i32 1
  %28 = load %struct.nv10_graph_chan**, %struct.nv10_graph_chan*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %28, i64 %30
  %32 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %31, align 8
  store %struct.nv10_graph_chan* %32, %struct.nv10_graph_chan** %4, align 8
  %33 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %4, align 8
  %34 = icmp ne %struct.nv10_graph_chan* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @nv10_graph_load_context(%struct.nv10_graph_chan* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %20
  %40 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %2, align 8
  %41 = getelementptr inbounds %struct.nv10_graph_priv, %struct.nv10_graph_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv04_graph_idle(%struct.nv10_graph_priv*) #1

declare dso_local %struct.nv10_graph_chan* @nv10_graph_channel(%struct.nv10_graph_priv*) #1

declare dso_local i32 @nv10_graph_unload_context(%struct.nv10_graph_chan*) #1

declare dso_local i32 @nv_rd32(%struct.nv10_graph_priv*, i32) #1

declare dso_local i32 @nv10_graph_load_context(%struct.nv10_graph_chan*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
