; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_context_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_context_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nvc0_graph_chan = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvc0_graph_context_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nvc0_graph_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %5 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %6 = bitcast %struct.nouveau_object* %5 to i8*
  %7 = bitcast i8* %6 to %struct.nvc0_graph_chan*
  store %struct.nvc0_graph_chan* %7, %struct.nvc0_graph_chan** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %3, align 8
  %11 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %8
  %16 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %3, align 8
  %17 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @nouveau_gpuobj_unmap(i32* %22)
  %24 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %3, align 8
  %25 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %30)
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %8

35:                                               ; preds = %8
  %36 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %3, align 8
  %37 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %36, i32 0, i32 2
  %38 = call i32 @nouveau_gpuobj_unmap(i32* %37)
  %39 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %3, align 8
  %40 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %39, i32 0, i32 1
  %41 = call i32 @nouveau_gpuobj_ref(i32* null, i32* %40)
  %42 = load %struct.nvc0_graph_chan*, %struct.nvc0_graph_chan** %3, align 8
  %43 = getelementptr inbounds %struct.nvc0_graph_chan, %struct.nvc0_graph_chan* %42, i32 0, i32 0
  %44 = call i32 @nouveau_graph_context_destroy(i32* %43)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @nouveau_gpuobj_unmap(i32*) #1

declare dso_local i32 @nouveau_gpuobj_ref(i32*, i32*) #1

declare dso_local i32 @nouveau_graph_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
