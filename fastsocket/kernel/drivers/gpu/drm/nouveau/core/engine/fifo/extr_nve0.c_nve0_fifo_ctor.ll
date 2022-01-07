; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nve0.c_nve0_fifo_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nve0_fifo_priv = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nve0_fifo_priv*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32* }

@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@nve0_fifo_uevent_enable = common dso_local global i32 0, align 4
@nve0_fifo_uevent_disable = common dso_local global i32 0, align 4
@nve0_fifo_intr = common dso_local global i32 0, align 4
@nve0_fifo_cclass = common dso_local global i32 0, align 4
@nve0_fifo_sclass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nve0_fifo_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_fifo_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nve0_fifo_priv*, align 8
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
  %19 = call i32 @nouveau_fifo_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32 0, i32 4095, %struct.nve0_fifo_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nve0_fifo_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %85

27:                                               ; preds = %6
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %29 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %30 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %31 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %28, i32* null, i32 2097152, i32 4096, i32 %29, i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %7, align 4
  br label %85

38:                                               ; preds = %27
  %39 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %40 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %44 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %45 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = call i32 @nouveau_gpuobj_map(i32 %42, i32 %43, i32* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %7, align 4
  br label %85

52:                                               ; preds = %38
  %53 = load i32, i32* @nve0_fifo_uevent_enable, align 4
  %54 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %55 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* @nve0_fifo_uevent_disable, align 4
  %60 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %61 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 8
  %65 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %66 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %67 = getelementptr inbounds %struct.nve0_fifo_priv, %struct.nve0_fifo_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store %struct.nve0_fifo_priv* %65, %struct.nve0_fifo_priv** %70, align 8
  %71 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %72 = call %struct.TYPE_9__* @nv_subdev(%struct.nve0_fifo_priv* %71)
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 256, i32* %73, align 4
  %74 = load i32, i32* @nve0_fifo_intr, align 4
  %75 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %76 = call %struct.TYPE_9__* @nv_subdev(%struct.nve0_fifo_priv* %75)
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %79 = call %struct.TYPE_10__* @nv_engine(%struct.nve0_fifo_priv* %78)
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32* @nve0_fifo_cclass, i32** %80, align 8
  %81 = load i32, i32* @nve0_fifo_sclass, align 4
  %82 = load %struct.nve0_fifo_priv*, %struct.nve0_fifo_priv** %14, align 8
  %83 = call %struct.TYPE_10__* @nv_engine(%struct.nve0_fifo_priv* %82)
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %52, %50, %36, %25
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @nouveau_fifo_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, %struct.nve0_fifo_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nve0_fifo_priv*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @nouveau_gpuobj_map(i32, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @nv_subdev(%struct.nve0_fifo_priv*) #1

declare dso_local %struct.TYPE_10__* @nv_engine(%struct.nve0_fifo_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
