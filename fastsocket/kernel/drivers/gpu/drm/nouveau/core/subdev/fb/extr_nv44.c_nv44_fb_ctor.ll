; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv44.c_nv44_fb_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv44.c_nv44_fb_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv44_fb_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@nv04_fb_memtype_valid = common dso_local global i32 0, align 4
@nv44_fb_vram_init = common dso_local global i32 0, align 4
@nv44_fb_tile_init = common dso_local global i32 0, align 4
@nv20_fb_tile_fini = common dso_local global i32 0, align 4
@nv44_fb_tile_prog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv44_fb_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv44_fb_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv44_fb_priv*, align 8
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
  %19 = call i32 @nouveau_fb_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, %struct.nv44_fb_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nv44_fb_priv*, %struct.nv44_fb_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nv44_fb_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %59

27:                                               ; preds = %6
  %28 = load i32, i32* @nv04_fb_memtype_valid, align 4
  %29 = load %struct.nv44_fb_priv*, %struct.nv44_fb_priv** %14, align 8
  %30 = getelementptr inbounds %struct.nv44_fb_priv, %struct.nv44_fb_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @nv44_fb_vram_init, align 4
  %33 = load %struct.nv44_fb_priv*, %struct.nv44_fb_priv** %14, align 8
  %34 = getelementptr inbounds %struct.nv44_fb_priv, %struct.nv44_fb_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.nv44_fb_priv*, %struct.nv44_fb_priv** %14, align 8
  %38 = getelementptr inbounds %struct.nv44_fb_priv, %struct.nv44_fb_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 12, i32* %40, align 4
  %41 = load i32, i32* @nv44_fb_tile_init, align 4
  %42 = load %struct.nv44_fb_priv*, %struct.nv44_fb_priv** %14, align 8
  %43 = getelementptr inbounds %struct.nv44_fb_priv, %struct.nv44_fb_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @nv20_fb_tile_fini, align 4
  %47 = load %struct.nv44_fb_priv*, %struct.nv44_fb_priv** %14, align 8
  %48 = getelementptr inbounds %struct.nv44_fb_priv, %struct.nv44_fb_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @nv44_fb_tile_prog, align 4
  %52 = load %struct.nv44_fb_priv*, %struct.nv44_fb_priv** %14, align 8
  %53 = getelementptr inbounds %struct.nv44_fb_priv, %struct.nv44_fb_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load %struct.nv44_fb_priv*, %struct.nv44_fb_priv** %14, align 8
  %57 = getelementptr inbounds %struct.nv44_fb_priv, %struct.nv44_fb_priv* %56, i32 0, i32 0
  %58 = call i32 @nouveau_fb_preinit(%struct.TYPE_6__* %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %27, %25
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @nouveau_fb_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nv44_fb_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv44_fb_priv*) #1

declare dso_local i32 @nouveau_fb_preinit(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
