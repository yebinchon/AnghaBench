; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32, i32, i32, i32, %struct.nouveau_oclass*, i32, i32 }
%struct.nouveau_oclass = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NOUVEAU_OBJECT_MAGIC = common dso_local global i32 0, align 4
@_objlist = common dso_local global i32 0, align 4
@_objlist_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_object_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.nouveau_object*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  %18 = load i8**, i8*** %13, align 8
  store i8* %17, i8** %18, align 8
  %19 = bitcast i8* %17 to %struct.nouveau_object*
  store %struct.nouveau_object* %19, %struct.nouveau_object** %14, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %21 = icmp ne %struct.nouveau_object* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %50

25:                                               ; preds = %6
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %27 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %28 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %27, i32 0, i32 6
  %29 = call i32 @nouveau_object_ref(%struct.nouveau_object* %26, i32* %28)
  %30 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %32 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %31, i32 0, i32 5
  %33 = call i32 @nouveau_object_ref(%struct.nouveau_object* %30, i32* %32)
  %34 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %35 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %36 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %35, i32 0, i32 4
  store %struct.nouveau_oclass* %34, %struct.nouveau_oclass** %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %39 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %38, i32 0, i32 4
  %40 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %39, align 8
  %41 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %45 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %44, i32 0, i32 3
  %46 = call i32 @atomic_set(i32* %45, i32 1)
  %47 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %48 = getelementptr inbounds %struct.nouveau_object, %struct.nouveau_object* %47, i32 0, i32 2
  %49 = call i32 @atomic_set(i32* %48, i32 0)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %25, %22
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_object_ref(%struct.nouveau_object*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
