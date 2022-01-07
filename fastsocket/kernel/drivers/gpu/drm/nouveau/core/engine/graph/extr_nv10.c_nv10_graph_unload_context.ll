; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_unload_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv10.c_nv10_graph_unload_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_graph_chan = type { i8**, i8** }
%struct.nv10_graph_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@nv10_graph_ctx_regs = common dso_local global i32* null, align 8
@nv17_graph_ctx_regs = common dso_local global i32* null, align 8
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv10_graph_chan*)* @nv10_graph_unload_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_graph_unload_context(%struct.nv10_graph_chan* %0) #0 {
  %2 = alloca %struct.nv10_graph_chan*, align 8
  %3 = alloca %struct.nv10_graph_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.nv10_graph_chan* %0, %struct.nv10_graph_chan** %2, align 8
  %5 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %2, align 8
  %6 = call %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan* %5)
  store %struct.nv10_graph_priv* %6, %struct.nv10_graph_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** @nv10_graph_ctx_regs, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %14 = load i32*, i32** @nv10_graph_ctx_regs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @nv_rd32(%struct.nv10_graph_priv* %13, i32 %18)
  %20 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %2, align 8
  %21 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %20, i32 0, i32 1
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  store i8* %19, i8** %25, align 8
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %31 = call %struct.TYPE_2__* @nv_device(%struct.nv10_graph_priv* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 23
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32*, i32** @nv17_graph_ctx_regs, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %43 = load i32*, i32** @nv17_graph_ctx_regs, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @nv_rd32(%struct.nv10_graph_priv* %42, i32 %47)
  %49 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %2, align 8
  %50 = getelementptr inbounds %struct.nv10_graph_chan, %struct.nv10_graph_chan* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %48, i8** %54, align 8
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %36

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58, %29
  %60 = load %struct.nv10_graph_chan*, %struct.nv10_graph_chan** %2, align 8
  %61 = call i32 @nv10_graph_save_pipe(%struct.nv10_graph_chan* %60)
  %62 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %63 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %64 = call i32 @nv_wr32(%struct.nv10_graph_priv* %62, i32 %63, i32 268435456)
  %65 = load %struct.nv10_graph_priv*, %struct.nv10_graph_priv** %3, align 8
  %66 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %67 = call i32 @nv_mask(%struct.nv10_graph_priv* %65, i32 %66, i32 -16777216, i32 520093696)
  ret i32 0
}

declare dso_local %struct.nv10_graph_priv* @nv10_graph_priv(%struct.nv10_graph_chan*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @nv_rd32(%struct.nv10_graph_priv*, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nv10_graph_priv*) #1

declare dso_local i32 @nv10_graph_save_pipe(%struct.nv10_graph_chan*) #1

declare dso_local i32 @nv_wr32(%struct.nv10_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv10_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
