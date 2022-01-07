; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_namedb.c_nouveau_namedb_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_namedb.c_nouveau_namedb_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_namedb = type { i32, i32 }

@NV_NAMEDB_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_namedb_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, %struct.nouveau_oclass* %4, i32 %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_object*, align 8
  %11 = alloca %struct.nouveau_object*, align 8
  %12 = alloca %struct.nouveau_oclass*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nouveau_oclass*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca %struct.nouveau_namedb*, align 8
  %19 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %10, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %11, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.nouveau_oclass* %4, %struct.nouveau_oclass** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %22 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @NV_NAMEDB_CLASS, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %14, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i8**, i8*** %17, align 8
  %30 = call i32 @nouveau_parent_create_(%struct.nouveau_object* %20, %struct.nouveau_object* %21, %struct.nouveau_oclass* %22, i32 %25, %struct.nouveau_oclass* %26, i32 %27, i32 %28, i8** %29)
  store i32 %30, i32* %19, align 4
  %31 = load i8**, i8*** %17, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.nouveau_namedb*
  store %struct.nouveau_namedb* %33, %struct.nouveau_namedb** %18, align 8
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %8
  %37 = load i32, i32* %19, align 4
  store i32 %37, i32* %9, align 4
  br label %45

38:                                               ; preds = %8
  %39 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %18, align 8
  %40 = getelementptr inbounds %struct.nouveau_namedb, %struct.nouveau_namedb* %39, i32 0, i32 1
  %41 = call i32 @rwlock_init(i32* %40)
  %42 = load %struct.nouveau_namedb*, %struct.nouveau_namedb** %18, align 8
  %43 = getelementptr inbounds %struct.nouveau_namedb, %struct.nouveau_namedb* %42, i32 0, i32 0
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %38, %36
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @nouveau_parent_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, %struct.nouveau_oclass*, i32, i32, i8**) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
