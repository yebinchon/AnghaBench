; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_base.c_nouveau_barobj_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_base.c_nouveau_barobj_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*, i8*, i32, %struct.TYPE_2__*)*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.nouveau_barobj = type { %struct.TYPE_2__, i64 }

@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i64, %struct.nouveau_object**)* @nouveau_barobj_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_barobj_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i64 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_bar*, align 8
  %15 = alloca %struct.nouveau_barobj*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = bitcast %struct.nouveau_object* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nouveau_bar*
  store %struct.nouveau_bar* %19, %struct.nouveau_bar** %14, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %22 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %23 = call i32 @nouveau_object_create(%struct.nouveau_object* %20, %struct.nouveau_object* %21, %struct.nouveau_oclass* %22, i32 0, %struct.nouveau_barobj** %15)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.nouveau_barobj*, %struct.nouveau_barobj** %15, align 8
  %25 = call %struct.nouveau_object* @nv_object(%struct.nouveau_barobj* %24)
  %26 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %25, %struct.nouveau_object** %26, align 8
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %7, align 4
  br label %56

31:                                               ; preds = %6
  %32 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %33 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %32, i32 0, i32 0
  %34 = load i32 (%struct.nouveau_bar*, i8*, i32, %struct.TYPE_2__*)*, i32 (%struct.nouveau_bar*, i8*, i32, %struct.TYPE_2__*)** %33, align 8
  %35 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %38 = load %struct.nouveau_barobj*, %struct.nouveau_barobj** %15, align 8
  %39 = getelementptr inbounds %struct.nouveau_barobj, %struct.nouveau_barobj* %38, i32 0, i32 0
  %40 = call i32 %34(%struct.nouveau_bar* %35, i8* %36, i32 %37, %struct.TYPE_2__* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %7, align 4
  br label %56

45:                                               ; preds = %31
  %46 = load %struct.nouveau_bar*, %struct.nouveau_bar** %14, align 8
  %47 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.nouveau_barobj*, %struct.nouveau_barobj** %15, align 8
  %50 = getelementptr inbounds %struct.nouveau_barobj, %struct.nouveau_barobj* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = load %struct.nouveau_barobj*, %struct.nouveau_barobj** %15, align 8
  %55 = getelementptr inbounds %struct.nouveau_barobj, %struct.nouveau_barobj* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %45, %43, %29
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @nouveau_object_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, %struct.nouveau_barobj**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nouveau_barobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
