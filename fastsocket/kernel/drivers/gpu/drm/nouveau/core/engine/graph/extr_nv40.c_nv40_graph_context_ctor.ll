; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_context_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_context_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv40_graph_priv = type { i32 }
%struct.nv40_graph_chan = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv40_graph_context_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_graph_context_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv40_graph_priv*, align 8
  %15 = alloca %struct.nv40_graph_chan*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = bitcast %struct.nouveau_object* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv40_graph_priv*
  store %struct.nv40_graph_priv* %19, %struct.nv40_graph_priv** %14, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %22 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %23 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %14, align 8
  %24 = getelementptr inbounds %struct.nv40_graph_priv, %struct.nv40_graph_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %27 = call i32 @nouveau_graph_context_create(%struct.nouveau_object* %20, %struct.nouveau_object* %21, %struct.nouveau_oclass* %22, i32* null, i32 %25, i32 16, i32 %26, %struct.nv40_graph_chan** %15)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.nv40_graph_chan*, %struct.nv40_graph_chan** %15, align 8
  %29 = call %struct.nouveau_object* @nv_object(%struct.nv40_graph_chan* %28)
  %30 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %29, %struct.nouveau_object** %30, align 8
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %7, align 4
  br label %48

35:                                               ; preds = %6
  %36 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %14, align 8
  %37 = call i32 @nv_device(%struct.nv40_graph_priv* %36)
  %38 = load %struct.nv40_graph_chan*, %struct.nv40_graph_chan** %15, align 8
  %39 = call %struct.TYPE_3__* @nv_gpuobj(%struct.nv40_graph_chan* %38)
  %40 = call i32 @nv40_grctx_fill(i32 %37, %struct.TYPE_3__* %39)
  %41 = load %struct.nv40_graph_chan*, %struct.nv40_graph_chan** %15, align 8
  %42 = load %struct.nv40_graph_chan*, %struct.nv40_graph_chan** %15, align 8
  %43 = call %struct.TYPE_3__* @nv_gpuobj(%struct.nv40_graph_chan* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 4
  %47 = call i32 @nv_wo32(%struct.nv40_graph_chan* %41, i32 0, i32 %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %35, %33
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @nouveau_graph_context_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32*, i32, i32, i32, %struct.nv40_graph_chan**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv40_graph_chan*) #1

declare dso_local i32 @nv40_grctx_fill(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @nv_device(%struct.nv40_graph_priv*) #1

declare dso_local %struct.TYPE_3__* @nv_gpuobj(%struct.nv40_graph_chan*) #1

declare dso_local i32 @nv_wo32(%struct.nv40_graph_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
