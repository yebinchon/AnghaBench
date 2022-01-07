; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_unk64xx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_unk64xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nvc0_grctx_generate_unk64xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_grctx_generate_unk64xx(%struct.nvc0_graph_priv* %0) #0 {
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
  %12 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 217
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %18 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %17, i32 4220092, i32 0)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %21 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 193
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %27 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 217
  br i1 %30, label %31, label %36

31:                                               ; preds = %25, %19
  %32 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %33 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %32, i32 4220096, i32 -2146172808)
  %34 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %35 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %34, i32 4220100, i32 8847359)
  br label %36

36:                                               ; preds = %31, %25
  ret void
}

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
