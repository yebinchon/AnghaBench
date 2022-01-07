; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_load_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_load_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_graph_chan = type { i32*, i32* }
%struct.nv10_graph_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@nv10_graph_ctx_regs = common dso_local global i32* null, align 8
@nv17_graph_ctx_regs = common dso_local global i32* null, align 8
@NV10_PGRAPH_GLOBALSTATE1 = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_ST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv10_graph_chan*, i32)* @nv10_graph_load_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_graph_load_context(%struct.nv10_graph_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.nv10_graph_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv10_graph_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nv10_graph_chan* %0, %struct.nv10_graph_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %3, align 8
  %9 = call %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan* %8)
  store %struct.nv10_graph_priv* %9, %struct.nv10_graph_priv** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32*, i32** @nv10_graph_ctx_regs, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %17 = load i32*, i32** @nv10_graph_ctx_regs, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %3, align 8
  %23 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nv_wr32(%struct.nv10_graph_priv* %16, i32 %21, i32 %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %35 = call %struct.TYPE_2__* @nv_device(%struct.nv10_graph_priv* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 23
  br i1 %38, label %39, label %64

39:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %60, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** @nv17_graph_ctx_regs, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %47 = load i32*, i32** @nv17_graph_ctx_regs, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %3, align 8
  %53 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nv_wr32(%struct.nv10_graph_priv* %46, i32 %51, i32 %58)
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %40

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %33
  %65 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %3, align 8
  %66 = call i32 @nv10_graph_load_pipe(%struct.nv10_graph_chan* %65)
  %67 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %68 = load i32, i32* @NV10_PGRAPH_GLOBALSTATE1, align 4
  %69 = call i32 @nv_rd32(%struct.nv10_graph_priv* %67, i32 %68)
  %70 = and i32 %69, 65535
  store i32 %70, i32* %6, align 4
  %71 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @nv10_graph_load_dma_vtxbuf(%struct.nv10_graph_chan* %71, i32 %72, i32 %73)
  %75 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %76 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %77 = call i32 @nv_wr32(%struct.nv10_graph_priv* %75, i32 %76, i32 268501248)
  %78 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %79 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %80 = load i32, i32* %4, align 4
  %81 = shl i32 %80, 24
  %82 = call i32 @nv_mask(%struct.nv10_graph_priv* %78, i32 %79, i32 -16777216, i32 %81)
  %83 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %5, align 8
  %84 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2, align 4
  %85 = call i32 @nv_mask(%struct.nv10_graph_priv* %83, i32 %84, i32 805306368, i32 0)
  ret i32 0
}

declare dso_local %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv10_graph_priv*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nv10_graph_priv*) #1

declare dso_local i32 @nv10_graph_load_pipe(%struct.nv10_graph_chan*) #1

declare dso_local i32 @nv_rd32(%struct.nv10_graph_priv*, i32) #1

declare dso_local i32 @nv10_graph_load_dma_vtxbuf(%struct.nv10_graph_chan*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv10_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
