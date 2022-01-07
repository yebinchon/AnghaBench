; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv20.c_nv20_graph_tile_prog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv20.c_nv20_graph_tile_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_engine = type { i32 }
%struct.nouveau_fb_tile = type { i32, i32, i32, i32 }
%struct.nouveau_fifo = type { i32 (%struct.nouveau_fifo*, i64*)*, i32 (%struct.nouveau_fifo*, i64*)* }
%struct.nv20_graph_priv = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nouveau_fb_tile* }
%struct.TYPE_5__ = type { i32 }

@NV10_PGRAPH_RDI_INDEX = common dso_local global i32 0, align 4
@NV10_PGRAPH_RDI_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv20_graph_tile_prog(%struct.nouveau_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_fb_tile*, align 8
  %6 = alloca %struct.nouveau_fifo*, align 8
  %7 = alloca %struct.nv20_graph_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.nouveau_engine* %0, %struct.nouveau_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %10 = call %struct.TYPE_6__* @nouveau_fb(%struct.nouveau_engine* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %13, i64 %15
  store %struct.nouveau_fb_tile* %16, %struct.nouveau_fb_tile** %5, align 8
  %17 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %18 = call %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_engine* %17)
  store %struct.nouveau_fifo* %18, %struct.nouveau_fifo** %6, align 8
  %19 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %20 = bitcast %struct.nouveau_engine* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nv20_graph_priv*
  store %struct.nv20_graph_priv* %21, %struct.nv20_graph_priv** %7, align 8
  %22 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %23 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %22, i32 0, i32 1
  %24 = load i32 (%struct.nouveau_fifo*, i64*)*, i32 (%struct.nouveau_fifo*, i64*)** %23, align 8
  %25 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %26 = call i32 %24(%struct.nouveau_fifo* %25, i64* %8)
  %27 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %28 = call i32 @nv04_graph_idle(%struct.nv20_graph_priv* %27)
  %29 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @NV20_PGRAPH_TLIMIT(i32 %30)
  %32 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %33 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nv_wr32(%struct.nv20_graph_priv* %29, i32 %31, i32 %34)
  %36 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @NV20_PGRAPH_TSIZE(i32 %37)
  %39 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %40 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nv_wr32(%struct.nv20_graph_priv* %36, i32 %38, i32 %41)
  %43 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @NV20_PGRAPH_TILE(i32 %44)
  %46 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %47 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nv_wr32(%struct.nv20_graph_priv* %43, i32 %45, i32 %48)
  %50 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %51 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 4, %52
  %54 = add nsw i32 15335472, %53
  %55 = call i32 @nv_wr32(%struct.nv20_graph_priv* %50, i32 %51, i32 %54)
  %56 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %57 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %58 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %59 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nv_wr32(%struct.nv20_graph_priv* %56, i32 %57, i32 %60)
  %62 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %63 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %64 = load i32, i32* %4, align 4
  %65 = mul nsw i32 4, %64
  %66 = add nsw i32 15335504, %65
  %67 = call i32 @nv_wr32(%struct.nv20_graph_priv* %62, i32 %63, i32 %66)
  %68 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %69 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %70 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %71 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nv_wr32(%struct.nv20_graph_priv* %68, i32 %69, i32 %72)
  %74 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %75 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %76 = load i32, i32* %4, align 4
  %77 = mul nsw i32 4, %76
  %78 = add nsw i32 15335440, %77
  %79 = call i32 @nv_wr32(%struct.nv20_graph_priv* %74, i32 %75, i32 %78)
  %80 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %81 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %82 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %83 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @nv_wr32(%struct.nv20_graph_priv* %80, i32 %81, i32 %84)
  %86 = load %struct.nouveau_engine*, %struct.nouveau_engine** %3, align 8
  %87 = call %struct.TYPE_5__* @nv_device(%struct.nouveau_engine* %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 52
  br i1 %90, label %91, label %111

91:                                               ; preds = %2
  %92 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @NV20_PGRAPH_ZCOMP(i32 %93)
  %95 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %96 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nv_wr32(%struct.nv20_graph_priv* %92, i32 %94, i32 %97)
  %99 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %100 = load i32, i32* @NV10_PGRAPH_RDI_INDEX, align 4
  %101 = load i32, i32* %4, align 4
  %102 = mul nsw i32 4, %101
  %103 = add nsw i32 15335568, %102
  %104 = call i32 @nv_wr32(%struct.nv20_graph_priv* %99, i32 %100, i32 %103)
  %105 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %7, align 8
  %106 = load i32, i32* @NV10_PGRAPH_RDI_DATA, align 4
  %107 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %5, align 8
  %108 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @nv_wr32(%struct.nv20_graph_priv* %105, i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %91, %2
  %112 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %113 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %112, i32 0, i32 0
  %114 = load i32 (%struct.nouveau_fifo*, i64*)*, i32 (%struct.nouveau_fifo*, i64*)** %113, align 8
  %115 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %6, align 8
  %116 = call i32 %114(%struct.nouveau_fifo* %115, i64* %8)
  ret void
}

declare dso_local %struct.TYPE_6__* @nouveau_fb(%struct.nouveau_engine*) #1

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(%struct.nouveau_engine*) #1

declare dso_local i32 @nv04_graph_idle(%struct.nv20_graph_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nv20_graph_priv*, i32, i32) #1

declare dso_local i32 @NV20_PGRAPH_TLIMIT(i32) #1

declare dso_local i32 @NV20_PGRAPH_TSIZE(i32) #1

declare dso_local i32 @NV20_PGRAPH_TILE(i32) #1

declare dso_local %struct.TYPE_5__* @nv_device(%struct.nouveau_engine*) #1

declare dso_local i32 @NV20_PGRAPH_ZCOMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
