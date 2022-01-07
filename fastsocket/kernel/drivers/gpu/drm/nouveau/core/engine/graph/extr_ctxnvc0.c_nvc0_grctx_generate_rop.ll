; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_rop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_rop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nvc0_grctx_generate_rop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_grctx_generate_rop(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %4 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %5 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %9 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %8, i32 4229120, i32 41953852)
  %10 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %11 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %10, i32 4229124, i32 64)
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 217
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %16 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %15, i32 4229128, i32 272883717)
  %17 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %18 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %17, i32 4229376, i32 813742081)
  %19 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %20 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %19, i32 4229380, i32 272883717)
  %21 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %22 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %21, i32 4229384, i32 13111343)
  br label %45

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 193
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %28 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %27, i32 4229128, i32 268689413)
  %29 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %30 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %29, i32 4229376, i32 813742081)
  %31 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %32 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %31, i32 4229380, i32 1644167169)
  %33 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %34 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %33, i32 4229384, i32 13109545)
  br label %44

35:                                               ; preds = %23
  %36 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %37 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %36, i32 4229128, i32 253965)
  %38 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %39 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %38, i32 4229376, i32 813742081)
  %40 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %41 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %40, i32 4229380, i32 33554433)
  %42 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %43 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %42, i32 4229384, i32 13109545)
  br label %44

44:                                               ; preds = %35, %26
  br label %45

45:                                               ; preds = %44, %14
  %46 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %47 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %46, i32 4229388, i32 0)
  %48 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %49 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %48, i32 4229504, i32 285)
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
