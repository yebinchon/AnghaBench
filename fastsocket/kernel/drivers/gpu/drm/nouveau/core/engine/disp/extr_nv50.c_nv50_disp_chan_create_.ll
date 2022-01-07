; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_chan_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_chan_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_disp_base = type { i32 }
%struct.nv50_disp_chan = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DMAOBJ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_disp_chan_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.nv50_disp_base*, align 8
  %15 = alloca %struct.nv50_disp_chan*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %18 = bitcast %struct.nouveau_object* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv50_disp_base*
  store %struct.nv50_disp_base* %19, %struct.nv50_disp_base** %14, align 8
  %20 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %14, align 8
  %21 = getelementptr inbounds %struct.nv50_disp_base, %struct.nv50_disp_base* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %56

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = shl i32 1, %31
  %33 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %14, align 8
  %34 = getelementptr inbounds %struct.nv50_disp_base, %struct.nv50_disp_base* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %38 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %39 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %40 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %41 = shl i64 1, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i8**, i8*** %13, align 8
  %44 = call i32 @nouveau_namedb_create_(%struct.nouveau_object* %37, %struct.nouveau_object* %38, %struct.nouveau_oclass* %39, i32 0, i32* null, i64 %41, i32 %42, i8** %43)
  store i32 %44, i32* %16, align 4
  %45 = load i8**, i8*** %13, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = bitcast i8* %46 to %struct.nv50_disp_chan*
  store %struct.nv50_disp_chan* %47, %struct.nv50_disp_chan** %15, align 8
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %7, align 4
  br label %56

52:                                               ; preds = %30
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %15, align 8
  %55 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %50, %27
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @nouveau_namedb_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32*, i64, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
