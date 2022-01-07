; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnve0.c_nve0_grctx_generate_902d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnve0.c_nve0_grctx_generate_902d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nve0_grctx_generate_902d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_grctx_generate_902d(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %3 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %4 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %3, i32 36909, i32 512, i32 207)
  %5 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %6 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %5, i32 36909, i32 516, i32 1)
  %7 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %8 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %7, i32 36909, i32 520, i32 32)
  %9 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %10 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %9, i32 36909, i32 524, i32 1)
  %11 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %12 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %11, i32 36909, i32 528, i32 0)
  %13 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %14 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %13, i32 36909, i32 532, i32 128)
  %15 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %16 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %15, i32 36909, i32 536, i32 256)
  %17 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %18 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %17, i32 36909, i32 540, i32 256)
  %19 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %20 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %19, i32 36909, i32 544, i32 0)
  %21 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %22 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %21, i32 36909, i32 548, i32 0)
  %23 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %24 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %23, i32 36909, i32 560, i32 207)
  %25 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %26 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %25, i32 36909, i32 564, i32 1)
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %28 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %27, i32 36909, i32 568, i32 32)
  %29 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %30 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %29, i32 36909, i32 572, i32 1)
  %31 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %32 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %31, i32 36909, i32 580, i32 128)
  %33 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %34 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %33, i32 36909, i32 584, i32 256)
  %35 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %36 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %35, i32 36909, i32 588, i32 256)
  %37 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %38 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %37, i32 36909, i32 13328, i32 0)
  ret void
}

declare dso_local i32 @nv_mthd(%struct.nvc0_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
