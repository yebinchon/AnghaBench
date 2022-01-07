; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nvc0.c_nvc0_vmmgr_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_nvc0.c_nvc0_vmmgr_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nvc0_vmmgr_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"VM\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"vm\00", align 1
@nvc0_vm_create = common dso_local global i32 0, align 4
@nvc0_vm_map_pgt = common dso_local global i32 0, align 4
@nvc0_vm_map = common dso_local global i32 0, align 4
@nvc0_vm_map_sg = common dso_local global i32 0, align 4
@nvc0_vm_unmap = common dso_local global i32 0, align 4
@nvc0_vm_flush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nvc0_vmmgr_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_vmmgr_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nvc0_vmmgr_priv*, align 8
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
  %19 = call i32 @nouveau_vmmgr_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.nvc0_vmmgr_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nvc0_vmmgr_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %70

27:                                               ; preds = %6
  %28 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %29 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 1099511627776, i64* %30, align 8
  %31 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %32 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 40, i32* %33, align 8
  %34 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %35 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 15, i32* %36, align 4
  %37 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %38 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 12, i32* %39, align 8
  %40 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %41 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  store i32 17, i32* %42, align 4
  %43 = load i32, i32* @nvc0_vm_create, align 4
  %44 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %45 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 10
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @nvc0_vm_map_pgt, align 4
  %48 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %49 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 9
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @nvc0_vm_map, align 4
  %52 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %53 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 8
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @nvc0_vm_map_sg, align 4
  %56 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %57 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 7
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @nvc0_vm_unmap, align 4
  %60 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %61 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 6
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @nvc0_vm_flush, align 4
  %64 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %65 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  store i32 %63, i32* %66, align 8
  %67 = load %struct.nvc0_vmmgr_priv*, %struct.nvc0_vmmgr_priv** %14, align 8
  %68 = getelementptr inbounds %struct.nvc0_vmmgr_priv, %struct.nvc0_vmmgr_priv* %67, i32 0, i32 0
  %69 = call i32 @spin_lock_init(i32* %68)
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %27, %25
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @nouveau_vmmgr_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i8*, %struct.nvc0_vmmgr_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nvc0_vmmgr_priv*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
