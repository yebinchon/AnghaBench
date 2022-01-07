; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_init_units.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nve0.c_nve0_graph_init_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nve0_graph_init_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nve0_graph_init_units(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %3 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %4 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %3, i32 4235260, i32 0)
  %5 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %6 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %5, i32 4234260, i32 15934)
  %7 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %8 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %7, i32 4234276, i32 983040)
  %9 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %10 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %9, i32 4210688, i32 -1073741824)
  %11 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %12 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %11, i32 4212224, i32 -1073741824)
  %13 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %14 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %13, i32 4227120, i32 -1073741824)
  %15 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %16 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %15, i32 4211856, i32 -1073741824)
  %17 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %18 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %17, i32 4218904, i32 -1073741824)
  %19 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %20 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %19, i32 4223008, i32 -1073741824)
  %21 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %22 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %21, i32 4216896, i32 -1073741824)
  %23 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %24 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %23, i32 4216900, i32 16777215)
  %25 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %26 = call i32 @nv_mask(%struct.nvc0_graph_priv* %25, i32 4299968, i32 8, i32 8)
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %28 = call i32 @nv_mask(%struct.nvc0_graph_priv* %27, i32 4300468, i32 4096, i32 4096)
  ret void
}

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nvc0_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
