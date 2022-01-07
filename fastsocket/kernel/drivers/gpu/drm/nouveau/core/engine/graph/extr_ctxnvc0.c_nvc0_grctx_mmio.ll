; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_mmio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_grctx = type { i32*, %struct.TYPE_2__*, %struct.nvc0_graph_priv* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.nvc0_graph_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvc0_grctx_mmio(%struct.nvc0_grctx* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nvc0_grctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvc0_graph_priv*, align 8
  store %struct.nvc0_grctx* %0, %struct.nvc0_grctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %6, align 8
  %13 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %12, i32 0, i32 2
  %14 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %13, align 8
  store %struct.nvc0_graph_priv* %14, %struct.nvc0_graph_priv** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %6, align 8
  %17 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %6, align 8
  %22 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %6, align 8
  %27 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %6, align 8
  %32 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 4
  %35 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %6, align 8
  %36 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 1
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %36, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %5
  %42 = load %struct.nvc0_grctx*, %struct.nvc0_grctx** %6, align 8
  %43 = getelementptr inbounds %struct.nvc0_grctx, %struct.nvc0_grctx* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %41, %5
  %54 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %11, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
