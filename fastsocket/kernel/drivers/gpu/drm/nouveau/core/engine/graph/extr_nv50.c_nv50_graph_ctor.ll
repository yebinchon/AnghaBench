; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_graph_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_graph_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_graph_priv = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@nv50_graph_intr = common dso_local global i32 0, align 4
@nv50_graph_cclass = common dso_local global i32 0, align 4
@nv50_graph_sclass = common dso_local global i32 0, align 4
@nv84_graph_sclass = common dso_local global i32 0, align 4
@nva0_graph_sclass = common dso_local global i32 0, align 4
@nva3_graph_sclass = common dso_local global i32 0, align 4
@nvaf_graph_sclass = common dso_local global i32 0, align 4
@nv50_graph_tlb_flush = common dso_local global i32 0, align 4
@nv84_graph_tlb_flush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_graph_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_graph_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_graph_priv*, align 8
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
  %19 = call i32 @nouveau_graph_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32 1, %struct.nv50_graph_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nv50_graph_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %93

27:                                               ; preds = %6
  %28 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %29 = call %struct.TYPE_4__* @nv_subdev(%struct.nv50_graph_priv* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 2101248, i32* %30, align 4
  %31 = load i32, i32* @nv50_graph_intr, align 4
  %32 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %33 = call %struct.TYPE_4__* @nv_subdev(%struct.nv50_graph_priv* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %36 = call %struct.TYPE_5__* @nv_engine(%struct.nv50_graph_priv* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32* @nv50_graph_cclass, i32** %37, align 8
  %38 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %39 = call %struct.TYPE_6__* @nv_device(%struct.nv50_graph_priv* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %67 [
    i32 80, label %42
    i32 132, label %47
    i32 134, label %47
    i32 146, label %47
    i32 148, label %47
    i32 150, label %47
    i32 152, label %47
    i32 160, label %52
    i32 170, label %52
    i32 172, label %52
    i32 163, label %57
    i32 165, label %57
    i32 168, label %57
    i32 175, label %62
  ]

42:                                               ; preds = %27
  %43 = load i32, i32* @nv50_graph_sclass, align 4
  %44 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %45 = call %struct.TYPE_5__* @nv_engine(%struct.nv50_graph_priv* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  br label %67

47:                                               ; preds = %27, %27, %27, %27, %27, %27
  %48 = load i32, i32* @nv84_graph_sclass, align 4
  %49 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %50 = call %struct.TYPE_5__* @nv_engine(%struct.nv50_graph_priv* %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  br label %67

52:                                               ; preds = %27, %27, %27
  %53 = load i32, i32* @nva0_graph_sclass, align 4
  %54 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %55 = call %struct.TYPE_5__* @nv_engine(%struct.nv50_graph_priv* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  br label %67

57:                                               ; preds = %27, %27, %27
  %58 = load i32, i32* @nva3_graph_sclass, align 4
  %59 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %60 = call %struct.TYPE_5__* @nv_engine(%struct.nv50_graph_priv* %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  br label %67

62:                                               ; preds = %27
  %63 = load i32, i32* @nvaf_graph_sclass, align 4
  %64 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %65 = call %struct.TYPE_5__* @nv_engine(%struct.nv50_graph_priv* %64)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %27, %62, %57, %52, %47, %42
  %68 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %69 = call %struct.TYPE_6__* @nv_device(%struct.nv50_graph_priv* %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 80
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %75 = call %struct.TYPE_6__* @nv_device(%struct.nv50_graph_priv* %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 172
  br i1 %78, label %79, label %84

79:                                               ; preds = %73, %67
  %80 = load i32, i32* @nv50_graph_tlb_flush, align 4
  %81 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %82 = call %struct.TYPE_5__* @nv_engine(%struct.nv50_graph_priv* %81)
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %89

84:                                               ; preds = %73
  %85 = load i32, i32* @nv84_graph_tlb_flush, align 4
  %86 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %87 = call %struct.TYPE_5__* @nv_engine(%struct.nv50_graph_priv* %86)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %14, align 8
  %91 = getelementptr inbounds %struct.nv50_graph_priv, %struct.nv50_graph_priv* %90, i32 0, i32 0
  %92 = call i32 @spin_lock_init(i32* %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %25
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @nouveau_graph_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, %struct.nv50_graph_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_graph_priv*) #1

declare dso_local %struct.TYPE_4__* @nv_subdev(%struct.nv50_graph_priv*) #1

declare dso_local %struct.TYPE_5__* @nv_engine(%struct.nv50_graph_priv*) #1

declare dso_local %struct.TYPE_6__* @nv_device(%struct.nv50_graph_priv*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
