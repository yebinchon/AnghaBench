; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv04.c_nv04_instmem_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/instmem/extr_nv04.c_nv04_instmem_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv04_instmem_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@nv04_instmem_alloc = common dso_local global i32 0, align 4
@NVOBJ_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv04_instmem_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_instmem_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv04_instmem_priv*, align 8
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
  %19 = call i32 @nouveau_instmem_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, %struct.nv04_instmem_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nv04_instmem_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %86

27:                                               ; preds = %6
  %28 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %29 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 524288, i32* %30, align 4
  %31 = load i32, i32* @nv04_instmem_alloc, align 4
  %32 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %33 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %36 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %35, i32 0, i32 6
  %37 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %38 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nouveau_mm_init(i32* %36, i32 0, i32 %40, i32 1)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %27
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %7, align 4
  br label %86

46:                                               ; preds = %27
  %47 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %48 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %49 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %48, i32 0, i32 4
  %50 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %47, i32* null, i32 65536, i32 0, i32 0, i32* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %7, align 4
  br label %86

55:                                               ; preds = %46
  %56 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %57 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %58 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %57, i32 0, i32 3
  %59 = call i32 @nouveau_ramht_new(%struct.nouveau_object* %56, i32* null, i32 32768, i32 0, i32* %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %7, align 4
  br label %86

64:                                               ; preds = %55
  %65 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %66 = load i32, i32* @NVOBJ_FLAG_ZERO_ALLOC, align 4
  %67 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %68 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %67, i32 0, i32 2
  %69 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %65, i32* null, i32 2048, i32 0, i32 %66, i32* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %7, align 4
  br label %86

74:                                               ; preds = %64
  %75 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %76 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %77 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %76, i32 0, i32 1
  %78 = call i32 @nouveau_gpuobj_new(%struct.nouveau_object* %75, i32* null, i32 512, i32 0, i32 0, i32* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %7, align 4
  br label %86

83:                                               ; preds = %74
  %84 = load %struct.nv04_instmem_priv*, %struct.nv04_instmem_priv** %14, align 8
  %85 = getelementptr inbounds %struct.nv04_instmem_priv, %struct.nv04_instmem_priv* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %83, %81, %72, %62, %53, %44, %25
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @nouveau_instmem_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nv04_instmem_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv04_instmem_priv*) #1

declare dso_local i32 @nouveau_mm_init(i32*, i32, i32, i32) #1

declare dso_local i32 @nouveau_gpuobj_new(%struct.nouveau_object*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @nouveau_ramht_new(%struct.nouveau_object*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
