; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_context_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_context_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_fifo_chan = type { i64 }
%struct.nv04_graph_priv = type { i32, %struct.nv04_graph_chan** }
%struct.nv04_graph_chan = type { i64, i32 }

@NV04_PGRAPH_DEBUG_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv04_graph_context_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_graph_context_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_fifo_chan*, align 8
  %15 = alloca %struct.nv04_graph_priv*, align 8
  %16 = alloca %struct.nv04_graph_chan*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %20 = bitcast %struct.nouveau_object* %19 to i8*
  %21 = bitcast i8* %20 to %struct.nouveau_fifo_chan*
  store %struct.nouveau_fifo_chan* %21, %struct.nouveau_fifo_chan** %14, align 8
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %23 = bitcast %struct.nouveau_object* %22 to i8*
  %24 = bitcast i8* %23 to %struct.nv04_graph_priv*
  store %struct.nv04_graph_priv* %24, %struct.nv04_graph_priv** %15, align 8
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %27 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %28 = call i32 @nouveau_object_create(%struct.nouveau_object* %25, %struct.nouveau_object* %26, %struct.nouveau_oclass* %27, i32 0, %struct.nv04_graph_chan** %16)
  store i32 %28, i32* %18, align 4
  %29 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %16, align 8
  %30 = call %struct.nouveau_object* @nv_object(%struct.nv04_graph_chan* %29)
  %31 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %30, %struct.nouveau_object** %31, align 8
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %7, align 4
  br label %93

36:                                               ; preds = %6
  %37 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %15, align 8
  %38 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %17, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %15, align 8
  %42 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %41, i32 0, i32 1
  %43 = load %struct.nv04_graph_chan**, %struct.nv04_graph_chan*** %42, align 8
  %44 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %14, align 8
  %45 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %43, i64 %46
  %48 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %47, align 8
  %49 = icmp ne %struct.nv04_graph_chan* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %36
  %51 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %15, align 8
  %52 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %51, i32 0, i32 1
  %53 = load %struct.nv04_graph_chan**, %struct.nv04_graph_chan*** %52, align 8
  %54 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %14, align 8
  %55 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %53, i64 %56
  %58 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %57, align 8
  %59 = call %struct.nouveau_object* @nv_object(%struct.nv04_graph_chan* %58)
  %60 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %59, %struct.nouveau_object** %60, align 8
  %61 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  %62 = load %struct.nouveau_object*, %struct.nouveau_object** %61, align 8
  %63 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %62, i32 0, i32 0
  %64 = call i32 @atomic_inc(i32* %63)
  %65 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %15, align 8
  %66 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %17, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %16, align 8
  %70 = getelementptr inbounds %struct.nv04_graph_chan, %struct.nv04_graph_chan* %69, i32 0, i32 1
  %71 = call i32 @nouveau_object_destroy(i32* %70)
  store i32 1, i32* %7, align 4
  br label %93

72:                                               ; preds = %36
  %73 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %16, align 8
  %74 = load i32, i32* @NV04_PGRAPH_DEBUG_3, align 4
  %75 = call i32* @ctx_reg(%struct.nv04_graph_chan* %73, i32 %74)
  store i32 -86704335, i32* %75, align 4
  %76 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %16, align 8
  %77 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %15, align 8
  %78 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %77, i32 0, i32 1
  %79 = load %struct.nv04_graph_chan**, %struct.nv04_graph_chan*** %78, align 8
  %80 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %14, align 8
  %81 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %79, i64 %82
  store %struct.nv04_graph_chan* %76, %struct.nv04_graph_chan** %83, align 8
  %84 = load %struct.nouveau_fifo_chan*, %struct.nouveau_fifo_chan** %14, align 8
  %85 = getelementptr inbounds %struct.nouveau_fifo_chan, %struct.nouveau_fifo_chan* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.nv04_graph_chan*, %struct.nv04_graph_chan** %16, align 8
  %88 = getelementptr inbounds %struct.nv04_graph_chan, %struct.nv04_graph_chan* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.nv04_graph_priv*, %struct.nv04_graph_priv** %15, align 8
  %90 = getelementptr inbounds %struct.nv04_graph_priv, %struct.nv04_graph_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %17, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %72, %50, %34
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @nouveau_object_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, %struct.nv04_graph_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv04_graph_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nouveau_object_destroy(i32*) #1

declare dso_local i32* @ctx_reg(%struct.nv04_graph_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
