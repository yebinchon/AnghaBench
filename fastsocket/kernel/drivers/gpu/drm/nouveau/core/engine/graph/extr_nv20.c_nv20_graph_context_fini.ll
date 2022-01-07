; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv20.c_nv20_graph_context_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv20.c_nv20_graph_context_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i64 }
%struct.nv20_graph_priv = type { i32 }
%struct.nv20_graph_chan = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv20_graph_context_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv20_graph_priv*, align 8
  %6 = alloca %struct.nv20_graph_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nv20_graph_priv*
  store %struct.nv20_graph_priv* %12, %struct.nv20_graph_priv** %5, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %14 = bitcast %struct.nouveau_object* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv20_graph_chan*
  store %struct.nv20_graph_chan* %15, %struct.nv20_graph_chan** %6, align 8
  store i32 -1, i32* %7, align 4
  %16 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %17 = call i32 @nv_mask(%struct.nv20_graph_priv* %16, i32 4196128, i32 1, i32 0)
  %18 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %19 = call i32 @nv_rd32(%struct.nv20_graph_priv* %18, i32 4194628)
  %20 = and i32 %19, 65536
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %24 = call i32 @nv_rd32(%struct.nv20_graph_priv* %23, i32 4194632)
  %25 = and i32 %24, 520093696
  %26 = ashr i32 %25, 24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %6, align 8
  %29 = getelementptr inbounds %struct.nv20_graph_chan, %struct.nv20_graph_chan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %35 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %6, align 8
  %36 = call %struct.TYPE_2__* @nv_gpuobj(%struct.nv20_graph_chan* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 4
  %40 = call i32 @nv_wr32(%struct.nv20_graph_priv* %34, i32 4196228, i32 %39)
  %41 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %42 = call i32 @nv_wr32(%struct.nv20_graph_priv* %41, i32 4196232, i32 2)
  %43 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %44 = call i32 @nv_wait(%struct.nv20_graph_priv* %43, i32 4196096, i32 -1, i32 0)
  %45 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %46 = call i32 @nv_wr32(%struct.nv20_graph_priv* %45, i32 4194628, i32 268435456)
  %47 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %48 = call i32 @nv_mask(%struct.nv20_graph_priv* %47, i32 4194632, i32 -16777216, i32 520093696)
  br label %49

49:                                               ; preds = %33, %27
  %50 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %51 = call i32 @nv_mask(%struct.nv20_graph_priv* %50, i32 4196128, i32 1, i32 1)
  %52 = load %struct.nv20_graph_priv*, %struct.nv20_graph_priv** %5, align 8
  %53 = getelementptr inbounds %struct.nv20_graph_priv, %struct.nv20_graph_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %6, align 8
  %56 = getelementptr inbounds %struct.nv20_graph_chan, %struct.nv20_graph_chan* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 4
  %59 = call i32 @nv_wo32(i32 %54, i32 %58, i32 0)
  %60 = load %struct.nv20_graph_chan*, %struct.nv20_graph_chan** %6, align 8
  %61 = getelementptr inbounds %struct.nv20_graph_chan, %struct.nv20_graph_chan* %60, i32 0, i32 1
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @nouveau_graph_context_fini(i32* %61, i32 %62)
  ret i32 %63
}

declare dso_local i32 @nv_mask(%struct.nv20_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nv20_graph_priv*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv20_graph_priv*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @nv_gpuobj(%struct.nv20_graph_chan*) #1

declare dso_local i32 @nv_wait(%struct.nv20_graph_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

declare dso_local i32 @nouveau_graph_context_fini(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
