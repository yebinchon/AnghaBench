; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_9297.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_9297.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nvc0_grctx_generate_9297 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_grctx_generate_9297(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %5 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %6 = call i32 @nvc0_graph_class(%struct.nvc0_graph_priv* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 37527
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  store i32 13312, i32* %4, align 4
  br label %10

10:                                               ; preds = %17, %9
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 13820
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %14, i32 37527, i32 %15, i32 0)
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 4
  store i32 %19, i32* %4, align 4
  br label %10

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %23 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %22, i32 37527, i32 876, i32 0)
  %24 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %25 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %24, i32 37527, i32 880, i32 0)
  %26 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %27 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %26, i32 37527, i32 1956, i32 0)
  %28 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %29 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %28, i32 37527, i32 1960, i32 0)
  %30 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %31 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %30, i32 37527, i32 884, i32 0)
  %32 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %33 = call i32 @nv_mthd(%struct.nvc0_graph_priv* %32, i32 37527, i32 888, i32 32)
  ret void
}

declare dso_local i32 @nvc0_graph_class(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nv_mthd(%struct.nvc0_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
