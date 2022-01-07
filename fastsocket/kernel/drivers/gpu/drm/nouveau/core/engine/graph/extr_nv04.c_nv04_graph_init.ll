; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_engine = type { i32 }
%struct.nv04_graph_priv = type { i32 }

@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_INTR_EN = common dso_local global i32 0, align 4
@NV04_PGRAPH_VALID1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_VALID2 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_1 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_2 = common dso_local global i32 0, align 4
@NV04_PGRAPH_DEBUG_3 = common dso_local global i32 0, align 4
@NV04_PGRAPH_STATE = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@NV04_PGRAPH_PATTERN_SHAPE = common dso_local global i32 0, align 4
@NV04_PGRAPH_BETA_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv04_graph_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_graph_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_engine*, align 8
  %5 = alloca %struct.nv04_graph_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = call %struct.nouveau_engine* @nv_engine(%struct.nouveau_object* %7)
  store %struct.nouveau_engine* %8, %struct.nouveau_engine** %4, align 8
  %9 = load %struct.nouveau_engine*, %struct.nouveau_engine** %4, align 8
  %10 = bitcast %struct.nouveau_engine* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nv04_graph_priv*
  store %struct.nv04_graph_priv* %11, %struct.nv04_graph_priv** %5, align 8
  %12 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %13 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %12, i32 0, i32 0
  %14 = call i32 @nouveau_graph_init(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %59

19:                                               ; preds = %1
  %20 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %21 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %22 = call i32 @nv_wr32(%struct.nv04_graph_priv* %20, i32 %21, i32 -1)
  %23 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %24 = load i32, i32* @NV03_PGRAPH_INTR_EN, align 4
  %25 = call i32 @nv_wr32(%struct.nv04_graph_priv* %23, i32 %24, i32 -1)
  %26 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %27 = load i32, i32* @NV04_PGRAPH_VALID1, align 4
  %28 = call i32 @nv_wr32(%struct.nv04_graph_priv* %26, i32 %27, i32 0)
  %29 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %30 = load i32, i32* @NV04_PGRAPH_VALID2, align 4
  %31 = call i32 @nv_wr32(%struct.nv04_graph_priv* %29, i32 %30, i32 0)
  %32 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %33 = load i32, i32* @NV04_PGRAPH_DEBUG_0, align 4
  %34 = call i32 @nv_wr32(%struct.nv04_graph_priv* %32, i32 %33, i32 305250304)
  %35 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %36 = load i32, i32* @NV04_PGRAPH_DEBUG_1, align 4
  %37 = call i32 @nv_wr32(%struct.nv04_graph_priv* %35, i32 %36, i32 1913721088)
  %38 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %39 = load i32, i32* @NV04_PGRAPH_DEBUG_2, align 4
  %40 = call i32 @nv_wr32(%struct.nv04_graph_priv* %38, i32 %39, i32 299233393)
  %41 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %42 = load i32, i32* @NV04_PGRAPH_DEBUG_3, align 4
  %43 = call i32 @nv_wr32(%struct.nv04_graph_priv* %41, i32 %42, i32 -254476495)
  %44 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %45 = load i32, i32* @NV04_PGRAPH_STATE, align 4
  %46 = call i32 @nv_wr32(%struct.nv04_graph_priv* %44, i32 %45, i32 -1)
  %47 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %48 = load i32, i32* @NV04_PGRAPH_CTX_CONTROL, align 4
  %49 = call i32 @nv_wr32(%struct.nv04_graph_priv* %47, i32 %48, i32 268435712)
  %50 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %51 = load i32, i32* @NV04_PGRAPH_CTX_USER, align 4
  %52 = call i32 @nv_mask(%struct.nv04_graph_priv* %50, i32 %51, i32 -16777216, i32 251658240)
  %53 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %54 = load i32, i32* @NV04_PGRAPH_PATTERN_SHAPE, align 4
  %55 = call i32 @nv_wr32(%struct.nv04_graph_priv* %53, i32 %54, i32 0)
  %56 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %5, align 8
  %57 = load i32, i32* @NV04_PGRAPH_BETA_AND, align 4
  %58 = call i32 @nv_wr32(%struct.nv04_graph_priv* %56, i32 %57, i32 -1)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %19, %17
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.nouveau_engine* @nv_engine(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_graph_init(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv04_graph_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv04_graph_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
