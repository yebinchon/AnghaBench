; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv04_graph_chan = type { i32 }
%struct.nv04_graph_priv = type { %struct.nv04_graph_chan** }

@NV04_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nv04_graph_chan* (%struct.nv04_graph_priv*)* @nv04_graph_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nv04_graph_chan* @nv04_graph_channel(%struct.nv04_graph_priv* %0) #0 {
  %2 = alloca %struct.nv04_graph_priv*, align 8
  %3 = alloca %struct.nv04_graph_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.nv04_graph_priv* %0, %struct.nv04_graph_priv** %2, align 8
  store %struct.nv04_graph_chan* null, %struct.nv04_graph_chan** %3, align 8
  %5 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %2, align 8
  %6 = load i32, i32* @NV04_PGRAPH_CTX_CONTROL, align 4
  %7 = call i32 @nv_rd32(%struct.nv04_graph_priv* %5, i32 %6)
  %8 = and i32 %7, 65536
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %2, align 8
  %12 = load i32, i32* @NV04_PGRAPH_CTX_USER, align 4
  %13 = call i32 @nv_rd32(%struct.nv04_graph_priv* %11, i32 %12)
  %14 = ashr i32 %13, 24
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %2, align 8
  %17 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %16, i32 0, i32 0
  %18 = load %struct.nv04_graph_chan**, %struct.nv04_graph_chan*** %17, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.nv04_graph_chan** %18)
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %10
  %22 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %2, align 8
  %23 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %22, i32 0, i32 0
  %24 = load %struct.nv04_graph_chan**, %struct.nv04_graph_chan*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %24, i64 %26
  %28 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %27, align 8
  store %struct.nv04_graph_chan* %28, %struct.nv04_graph_chan** %3, align 8
  br label %29

29:                                               ; preds = %21, %10
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %3, align 8
  ret %struct.nv04_graph_chan* %31
}

declare dso_local i32 @nv_rd32(%struct.nv04_graph_priv*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.nv04_graph_chan**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
