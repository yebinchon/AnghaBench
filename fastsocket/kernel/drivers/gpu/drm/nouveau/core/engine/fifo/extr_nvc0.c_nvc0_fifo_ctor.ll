; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/fifo/extr_nvc0.c_nvc0_fifo_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nvc0_fifo_priv = type { %struct.TYPE_8__, %struct.TYPE_6__, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nvc0_fifo_priv*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32* }

@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@nvc0_fifo_uevent_enable = common dso_local global i32 0, align 4
@nvc0_fifo_uevent_disable = common dso_local global i32 0, align 4
@nvc0_fifo_intr = common dso_local global i32 0, align 4
@nvc0_fifo_cclass = common dso_local global i32 0, align 4
@nvc0_fifo_sclass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nvc0_fifo_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_fifo_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nvc0_fifo_priv*, align 8
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
  %19 = call i32 @nouveau_fifo_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32 0, i32 127, %struct.nvc0_fifo_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nvc0_fifo_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %106

27:                                               ; preds = %6
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %29 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %30 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %28, i32* null, i32 4096, i32 4096, i32 0, i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %7, align 4
  br label %106

38:                                               ; preds = %27
  %39 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %40 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %41 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %39, i32* null, i32 4096, i32 4096, i32 0, i32* %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %7, align 4
  br label %106

49:                                               ; preds = %38
  %50 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %51 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %52 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %50, i32* null, i32 524288, i32 4096, i32 0, i32* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %7, align 4
  br label %106

59:                                               ; preds = %49
  %60 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %61 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %65 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %66 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @nouveau_gpuobj_map(i32 %63, i32 %64, i32* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %7, align 4
  br label %106

73:                                               ; preds = %59
  %74 = load i32, i32* @nvc0_fifo_uevent_enable, align 4
  %75 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %76 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* @nvc0_fifo_uevent_disable, align 4
  %81 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %82 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 %80, i32* %85, align 8
  %86 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %87 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %88 = getelementptr inbounds %struct.nvc0_fifo_priv, %struct.nvc0_fifo_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store %struct.nvc0_fifo_priv* %86, %struct.nvc0_fifo_priv** %91, align 8
  %92 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %93 = call %struct.TYPE_9__* @nv_subdev(%struct.nvc0_fifo_priv* %92)
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i32 256, i32* %94, align 4
  %95 = load i32, i32* @nvc0_fifo_intr, align 4
  %96 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %97 = call %struct.TYPE_9__* @nv_subdev(%struct.nvc0_fifo_priv* %96)
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %100 = call %struct.TYPE_10__* @nv_engine(%struct.nvc0_fifo_priv* %99)
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store i32* @nvc0_fifo_cclass, i32** %101, align 8
  %102 = load i32, i32* @nvc0_fifo_sclass, align 4
  %103 = load %struct.nvc0_fifo_priv*, %struct.nvc0_fifo_priv** %14, align 8
  %104 = call %struct.TYPE_10__* @nv_engine(%struct.nvc0_fifo_priv* %103)
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %73, %71, %57, %47, %36, %25
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @nouveau_fifo_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, %struct.nvc0_fifo_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nvc0_fifo_priv*) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @nouveau_gpuobj_map(i32, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @nv_subdev(%struct.nvc0_fifo_priv*) #1

declare dso_local %struct.TYPE_10__* @nv_engine(%struct.nvc0_fifo_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
