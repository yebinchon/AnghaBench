; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_falcon.c_nouveau_falcon_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_falcon.c_nouveau_falcon_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_falcon = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_falcon_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i32 %4, i8* %5, i8* %6, i32 %7, i8** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_object*, align 8
  %12 = alloca %struct.nouveau_object*, align 8
  %13 = alloca %struct.nouveau_oclass*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8**, align 8
  %20 = alloca %struct.nouveau_falcon*, align 8
  %21 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %11, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %12, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8** %8, i8*** %19, align 8
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %12, align 8
  %24 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %13, align 8
  %25 = load i32, i32* %15, align 4
  %26 = load i8*, i8** %16, align 8
  %27 = load i8*, i8** %17, align 8
  %28 = load i32, i32* %18, align 4
  %29 = load i8**, i8*** %19, align 8
  %30 = call i32 @nouveau_engine_create_(%struct.nouveau_object* %22, %struct.nouveau_object* %23, %struct.nouveau_oclass* %24, i32 %25, i8* %26, i8* %27, i32 %28, i8** %29)
  store i32 %30, i32* %21, align 4
  %31 = load i8**, i8*** %19, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.nouveau_falcon*
  store %struct.nouveau_falcon* %33, %struct.nouveau_falcon** %20, align 8
  %34 = load i32, i32* %21, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %9
  %37 = load i32, i32* %21, align 4
  store i32 %37, i32* %10, align 4
  br label %42

38:                                               ; preds = %9
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %20, align 8
  %41 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %36
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @nouveau_engine_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i8*, i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
