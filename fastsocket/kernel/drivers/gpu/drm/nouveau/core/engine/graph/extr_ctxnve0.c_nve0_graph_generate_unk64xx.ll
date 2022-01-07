; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnve0.c_nve0_graph_generate_unk64xx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnve0.c_nve0_graph_generate_unk64xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nve0_graph_generate_unk64xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_graph_generate_unk64xx(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %3 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %4 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %3, i32 4220072, i32 0)
  %5 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %6 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %5, i32 4220076, i32 16383)
  %7 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %8 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %7, i32 4220084, i32 0)
  %9 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %10 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %9, i32 4220088, i32 0)
  %11 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %12 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %11, i32 4220096, i32 -2145779472)
  %13 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %14 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %13, i32 4220100, i32 26411007)
  %15 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %16 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %15, i32 4220104, i32 25167360)
  %17 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %18 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %17, i32 4220108, i32 0)
  %19 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %20 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %19, i32 4220112, i32 0)
  %21 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %22 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %21, i32 4220116, i32 0)
  %23 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %24 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %23, i32 4220120, i32 0)
  %25 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %26 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %25, i32 4220124, i32 0)
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %28 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %27, i32 4220128, i32 0)
  %29 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %30 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %29, i32 4220132, i32 0)
  %31 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %32 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %31, i32 4220136, i32 0)
  %33 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %34 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %33, i32 4220140, i32 0)
  %35 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %36 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %35, i32 4220156, i32 554)
  ret void
}

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
