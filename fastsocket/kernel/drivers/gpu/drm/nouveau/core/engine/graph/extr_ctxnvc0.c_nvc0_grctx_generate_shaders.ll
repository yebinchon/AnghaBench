; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_shaders.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_shaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nvc0_grctx_generate_shaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_grctx_generate_shaders(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %3 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %4 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 217
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %10 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %9, i32 4216832, i32 260047039)
  %11 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %12 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %11, i32 4216880, i32 35127832)
  %13 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %14 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %13, i32 4216884, i32 134217728)
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %17 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 193
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %23 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %22, i32 4216832, i32 260047039)
  %24 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %25 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %24, i32 4216880, i32 35127832)
  %26 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %27 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %26, i32 4216884, i32 0)
  br label %35

28:                                               ; preds = %15
  %29 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %30 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %29, i32 4216832, i32 125829311)
  %31 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %32 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %31, i32 4216880, i32 35127296)
  %33 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %34 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %33, i32 4216884, i32 0)
  br label %35

35:                                               ; preds = %28, %21
  br label %36

36:                                               ; preds = %35, %8
  %37 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %38 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %37, i32 4216888, i32 0)
  %39 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %40 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %39, i32 4216916, i32 0)
  %41 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %42 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %41, i32 4216944, i32 1)
  %43 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %44 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %43, i32 4216948, i32 1)
  %45 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %46 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %45, i32 4216952, i32 1)
  %47 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %48 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %47, i32 4216956, i32 1)
  %49 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %50 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %49, i32 4217344, i32 0)
  %51 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %52 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %51, i32 4217348, i32 0)
  %53 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %54 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %53, i32 4217368, i32 0)
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
