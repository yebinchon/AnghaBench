; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv40.c_nv40_graph_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv40_graph_priv = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }

@nv40_graph_intr = common dso_local global i32 0, align 4
@nv40_graph_cclass = common dso_local global i32 0, align 4
@nv44_graph_sclass = common dso_local global i32 0, align 4
@nv40_graph_sclass = common dso_local global i32 0, align 4
@nv40_graph_tile_prog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv40_graph_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_graph_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv40_graph_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %19 = call i32 @nouveau_graph_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32 1, %struct.nv40_graph_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nv40_graph_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %56

27:                                               ; preds = %6
  %28 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %14, align 8
  %29 = call %struct.TYPE_3__* @nv_subdev(%struct.nv40_graph_priv* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 4096, i32* %30, align 4
  %31 = load i32, i32* @nv40_graph_intr, align 4
  %32 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %14, align 8
  %33 = call %struct.TYPE_3__* @nv_subdev(%struct.nv40_graph_priv* %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %14, align 8
  %36 = call %struct.TYPE_4__* @nv_engine(%struct.nv40_graph_priv* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32* @nv40_graph_cclass, i32** %37, align 8
  %38 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %14, align 8
  %39 = call i64 @nv44_graph_class(%struct.nv40_graph_priv* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load i32, i32* @nv44_graph_sclass, align 4
  %43 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %14, align 8
  %44 = call %struct.TYPE_4__* @nv_engine(%struct.nv40_graph_priv* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  br label %51

46:                                               ; preds = %27
  %47 = load i32, i32* @nv40_graph_sclass, align 4
  %48 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %14, align 8
  %49 = call %struct.TYPE_4__* @nv_engine(%struct.nv40_graph_priv* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @nv40_graph_tile_prog, align 4
  %53 = load %struct.nv40_graph_priv*, %struct.nv40_graph_priv** %14, align 8
  %54 = call %struct.TYPE_4__* @nv_engine(%struct.nv40_graph_priv* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %25
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @nouveau_graph_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, %struct.nv40_graph_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv40_graph_priv*) #1

declare dso_local %struct.TYPE_3__* @nv_subdev(%struct.nv40_graph_priv*) #1

declare dso_local %struct.TYPE_4__* @nv_engine(%struct.nv40_graph_priv*) #1

declare dso_local i64 @nv44_graph_class(%struct.nv40_graph_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
