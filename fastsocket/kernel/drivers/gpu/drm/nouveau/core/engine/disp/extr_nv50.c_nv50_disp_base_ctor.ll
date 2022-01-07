; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_base_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_base_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_disp_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.nv50_disp_priv* }
%struct.nv50_disp_base = type { i32 }

@nv50_disp_base_vblank_enable = common dso_local global i32 0, align 4
@nv50_disp_base_vblank_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_disp_base_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_base_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_disp_priv*, align 8
  %15 = alloca %struct.nv50_disp_base*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = bitcast %struct.nouveau_object* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv50_disp_priv*
  store %struct.nv50_disp_priv* %19, %struct.nv50_disp_priv** %14, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %22 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %23 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %24 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @nouveau_parent_create(%struct.nouveau_object* %20, %struct.nouveau_object* %21, %struct.nouveau_oclass* %22, i32 0, i32 %25, i32 0, %struct.nv50_disp_base** %15)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %15, align 8
  %28 = call %struct.nouveau_object* @nv_object(%struct.nv50_disp_base* %27)
  %29 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %28, %struct.nouveau_object** %29, align 8
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %7, align 4
  br label %58

34:                                               ; preds = %6
  %35 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %36 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %37 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store %struct.nv50_disp_priv* %35, %struct.nv50_disp_priv** %40, align 8
  %41 = load i32, i32* @nv50_disp_base_vblank_enable, align 4
  %42 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %43 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* @nv50_disp_base_vblank_disable, align 4
  %48 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %49 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  %53 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %54 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %55 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %15, align 8
  %56 = getelementptr inbounds %struct.nv50_disp_base, %struct.nv50_disp_base* %55, i32 0, i32 0
  %57 = call i32 @nouveau_ramht_new(%struct.nouveau_object* %53, %struct.nouveau_object* %54, i32 4096, i32 0, i32* %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %34, %32
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @nouveau_parent_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i32, %struct.nv50_disp_base**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_disp_base*) #1

declare dso_local i32 @nouveau_ramht_new(%struct.nouveau_object*, %struct.nouveau_object*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
