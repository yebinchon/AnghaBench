; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_unload_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_unload_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv04_graph_chan = type { i32* }
%struct.nv04_graph_priv = type { i32 }

@nv04_graph_ctx_regs = common dso_local global i32* null, align 8
@NV04_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv04_graph_chan*)* @nv04_graph_unload_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_graph_unload_context(%struct.nv04_graph_chan* %0) #0 {
  %2 = alloca %struct.nv04_graph_chan*, align 8
  %3 = alloca %struct.nv04_graph_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.nv04_graph_chan* %0, %struct.nv04_graph_chan** %2, align 8
  %5 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %2, align 8
  %6 = call %struct.nv04_graph_priv* @nv04_graph_priv(%struct.nv04_graph_chan* %5)
  store %struct.nv04_graph_priv* %6, %struct.nv04_graph_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** @nv04_graph_ctx_regs, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %14 = load i32*, i32** @nv04_graph_ctx_regs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nv_rd32(%struct.nv04_graph_priv* %13, i32 %18)
  %20 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %2, align 8
  %21 = getelementptr inbounds %struct.nv04_graph_chan, %struct.nv04_graph_chan* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %31 = load i32, i32* @NV04_PGRAPH_CTX_CONTROL, align 4
  %32 = call i32 @nv_wr32(%struct.nv04_graph_priv* %30, i32 %31, i32 268435456)
  %33 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %3, align 8
  %34 = load i32, i32* @NV04_PGRAPH_CTX_USER, align 4
  %35 = call i32 @nv_mask(%struct.nv04_graph_priv* %33, i32 %34, i32 -16777216, i32 251658240)
  ret i32 0
}

declare dso_local %struct.nv04_graph_priv* @nv04_graph_priv(%struct.nv04_graph_chan*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nv_rd32(%struct.nv04_graph_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv04_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv04_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
