; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_data_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_data_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nv50_disp_priv = type { i32 }
%struct.nouveau_engctx = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@NV_DEVICE_CLASS = common dso_local global i64 0, align 8
@NVOBJ_FLAG_HEAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_disp_data_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_data_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nv50_disp_priv*, align 8
  %15 = alloca %struct.nouveau_engctx*, align 8
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
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %23 = call i64 @nv_mclass(%struct.nouveau_object* %22)
  %24 = load i64, i64* @NV_DEVICE_CLASS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %6
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %28 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %27, i32 0, i32 0
  %29 = call i32 @atomic_inc(i32* %28)
  %30 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %31 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %30, %struct.nouveau_object** %31, align 8
  store i32 0, i32* %7, align 4
  br label %57

32:                                               ; preds = %6
  %33 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %34 = call %struct.TYPE_3__* @nv_subdev(%struct.nv50_disp_priv* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %38 = call %struct.TYPE_4__* @nv_engine(%struct.nv50_disp_priv* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i64 @list_empty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %44 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %45 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %46 = load i32, i32* @NVOBJ_FLAG_HEAP, align 4
  %47 = call i32 @nouveau_engctx_create(%struct.nouveau_object* %43, %struct.nouveau_object* %44, %struct.nouveau_oclass* %45, i32* null, i32 65536, i32 65536, i32 %46, %struct.nouveau_engctx** %15)
  store i32 %47, i32* %16, align 4
  %48 = load %struct.nouveau_engctx*, %struct.nouveau_engctx** %15, align 8
  %49 = call %struct.nouveau_object* @nv_object(%struct.nouveau_engctx* %48)
  %50 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %49, %struct.nouveau_object** %50, align 8
  br label %51

51:                                               ; preds = %42, %32
  %52 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %14, align 8
  %53 = call %struct.TYPE_3__* @nv_subdev(%struct.nv50_disp_priv* %52)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %51, %26
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i64 @nv_mclass(%struct.nouveau_object*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @nv_subdev(%struct.nv50_disp_priv*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.TYPE_4__* @nv_engine(%struct.nv50_disp_priv*) #1

declare dso_local i32 @nouveau_engctx_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32*, i32, i32, i32, %struct.nouveau_engctx**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nouveau_engctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
