; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_parent.c_nouveau_parent_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_parent.c_nouveau_parent_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i64 }
%struct.nouveau_parent = type { i32, %struct.nouveau_sclass* }
%struct.nouveau_sclass = type { %struct.nouveau_oclass*, i32*, %struct.nouveau_sclass* }

@NV_PARENT_CLASS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_parent_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, %struct.nouveau_oclass* %4, i32 %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_object*, align 8
  %11 = alloca %struct.nouveau_object*, align 8
  %12 = alloca %struct.nouveau_oclass*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nouveau_oclass*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca %struct.nouveau_parent*, align 8
  %19 = alloca %struct.nouveau_sclass*, align 8
  %20 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %10, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %11, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.nouveau_oclass* %4, %struct.nouveau_oclass** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %23 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @NV_PARENT_CLASS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %16, align 4
  %28 = load i8**, i8*** %17, align 8
  %29 = call i32 @nouveau_object_create_(%struct.nouveau_object* %21, %struct.nouveau_object* %22, %struct.nouveau_oclass* %23, i32 %26, i32 %27, i8** %28)
  store i32 %29, i32* %20, align 4
  %30 = load i8**, i8*** %17, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.nouveau_parent*
  store %struct.nouveau_parent* %32, %struct.nouveau_parent** %18, align 8
  %33 = load i32, i32* %20, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %8
  %36 = load i32, i32* %20, align 4
  store i32 %36, i32* %9, align 4
  br label %84

37:                                               ; preds = %8
  br label %38

38:                                               ; preds = %71, %37
  %39 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %14, align 8
  %40 = icmp ne %struct.nouveau_oclass* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %14, align 8
  %43 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  br i1 %47, label %48, label %80

48:                                               ; preds = %46
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.nouveau_sclass* @kzalloc(i32 24, i32 %49)
  store %struct.nouveau_sclass* %50, %struct.nouveau_sclass** %19, align 8
  %51 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %19, align 8
  %52 = icmp ne %struct.nouveau_sclass* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %84

56:                                               ; preds = %48
  %57 = load %struct.nouveau_parent*, %struct.nouveau_parent** %18, align 8
  %58 = getelementptr inbounds %struct.nouveau_parent, %struct.nouveau_parent* %57, i32 0, i32 1
  %59 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %58, align 8
  %60 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %19, align 8
  %61 = getelementptr inbounds %struct.nouveau_sclass, %struct.nouveau_sclass* %60, i32 0, i32 2
  store %struct.nouveau_sclass* %59, %struct.nouveau_sclass** %61, align 8
  %62 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %19, align 8
  %63 = load %struct.nouveau_parent*, %struct.nouveau_parent** %18, align 8
  %64 = getelementptr inbounds %struct.nouveau_parent, %struct.nouveau_parent* %63, i32 0, i32 1
  store %struct.nouveau_sclass* %62, %struct.nouveau_sclass** %64, align 8
  %65 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %66 = icmp ne %struct.nouveau_object* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %69 = call i32* @nv_engine(%struct.nouveau_object* %68)
  br label %71

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i32* [ %69, %67 ], [ null, %70 ]
  %73 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %19, align 8
  %74 = getelementptr inbounds %struct.nouveau_sclass, %struct.nouveau_sclass* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  %75 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %14, align 8
  %76 = load %struct.nouveau_sclass*, %struct.nouveau_sclass** %19, align 8
  %77 = getelementptr inbounds %struct.nouveau_sclass, %struct.nouveau_sclass* %76, i32 0, i32 0
  store %struct.nouveau_oclass* %75, %struct.nouveau_oclass** %77, align 8
  %78 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %14, align 8
  %79 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %78, i32 1
  store %struct.nouveau_oclass* %79, %struct.nouveau_oclass** %14, align 8
  br label %38

80:                                               ; preds = %46
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.nouveau_parent*, %struct.nouveau_parent** %18, align 8
  %83 = getelementptr inbounds %struct.nouveau_parent, %struct.nouveau_parent* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %53, %35
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i32 @nouveau_object_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8**) #1

declare dso_local %struct.nouveau_sclass* @kzalloc(i32, i32) #1

declare dso_local i32* @nv_engine(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
