; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv84.c_nv84_fifo_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nv84.c_nv84_fifo_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_fifo_priv = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nv50_fifo_priv*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@nv84_fifo_uevent_enable = common dso_local global i32 0, align 4
@nv84_fifo_uevent_disable = common dso_local global i32 0, align 4
@nv04_fifo_intr = common dso_local global i32 0, align 4
@nv84_fifo_cclass = common dso_local global i32 0, align 4
@nv84_fifo_sclass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv84_fifo_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_fifo_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_fifo_priv*, align 8
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
  %19 = call i32 @nouveau_fifo_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32 1, i32 127, %struct.nv50_fifo_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nv50_fifo_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %82

27:                                               ; preds = %6
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %29 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %30 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %28, i32* null, i32 512, i32 4096, i32 0, i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %7, align 4
  br label %82

38:                                               ; preds = %27
  %39 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %40 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %41 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %39, i32* null, i32 512, i32 4096, i32 0, i32* %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %7, align 4
  br label %82

49:                                               ; preds = %38
  %50 = load i32, i32* @nv84_fifo_uevent_enable, align 4
  %51 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %52 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* @nv84_fifo_uevent_disable, align 4
  %57 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %58 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 8
  %62 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %63 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %64 = getelementptr inbounds %struct.nv50_fifo_priv, %struct.nv50_fifo_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store %struct.nv50_fifo_priv* %62, %struct.nv50_fifo_priv** %67, align 8
  %68 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %69 = call %struct.TYPE_7__* @nv_subdev(%struct.nv50_fifo_priv* %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 256, i32* %70, align 4
  %71 = load i32, i32* @nv04_fifo_intr, align 4
  %72 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %73 = call %struct.TYPE_7__* @nv_subdev(%struct.nv50_fifo_priv* %72)
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %76 = call %struct.TYPE_8__* @nv_engine(%struct.nv50_fifo_priv* %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32* @nv84_fifo_cclass, i32** %77, align 8
  %78 = load i32, i32* @nv84_fifo_sclass, align 4
  %79 = load %struct.nv50_fifo_priv*, %struct.nv50_fifo_priv** %14, align 8
  %80 = call %struct.TYPE_8__* @nv_engine(%struct.nv50_fifo_priv* %79)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %49, %47, %36, %25
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @nouveau_fifo_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, %struct.nv50_fifo_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_fifo_priv*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @nv_subdev(%struct.nv50_fifo_priv*) #1

declare dso_local %struct.TYPE_8__* @nv_engine(%struct.nv50_fifo_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
