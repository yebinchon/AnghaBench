; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/copy/extr_nve0.c_nve0_copy1_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/copy/extr_nve0.c_nve0_copy1_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nve0_copy_priv = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PCE1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"copy1\00", align 1
@nve0_copy_cclass = common dso_local global i32 0, align 4
@nve0_copy_sclass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nve0_copy1_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nve0_copy1_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nve0_copy_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %17 = call i32 @nv_rd32(%struct.nouveau_object* %16, i32 140544)
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %46

23:                                               ; preds = %6
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %26 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %27 = call i32 @nouveau_engine_create(%struct.nouveau_object* %24, %struct.nouveau_object* %25, %struct.nouveau_oclass* %26, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.nve0_copy_priv** %14)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.nve0_copy_priv*, %struct.nve0_copy_priv** %14, align 8
  %29 = call %struct.nouveau_object* @nv_object(%struct.nve0_copy_priv* %28)
  %30 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %29, %struct.nouveau_object** %30, align 8
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %7, align 4
  br label %46

35:                                               ; preds = %23
  %36 = load %struct.nve0_copy_priv*, %struct.nve0_copy_priv** %14, align 8
  %37 = call %struct.TYPE_3__* @nv_subdev(%struct.nve0_copy_priv* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 128, i32* %38, align 4
  %39 = load %struct.nve0_copy_priv*, %struct.nve0_copy_priv** %14, align 8
  %40 = call %struct.TYPE_4__* @nv_engine(%struct.nve0_copy_priv* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32* @nve0_copy_cclass, i32** %41, align 8
  %42 = load i32, i32* @nve0_copy_sclass, align 4
  %43 = load %struct.nve0_copy_priv*, %struct.nve0_copy_priv** %14, align 8
  %44 = call %struct.TYPE_4__* @nv_engine(%struct.nve0_copy_priv* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %35, %33, %20
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @nv_rd32(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nouveau_engine_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i8*, i8*, %struct.nve0_copy_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nve0_copy_priv*) #1

declare dso_local %struct.TYPE_3__* @nv_subdev(%struct.nve0_copy_priv*) #1

declare dso_local %struct.TYPE_4__* @nv_engine(%struct.nve0_copy_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
