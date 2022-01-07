; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_client.c_nouveau_client_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_client.c_nouveau_client_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_client = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@nouveau_client_oclass = common dso_local global i32 0, align 4
@NV_CLIENT_CLASS = common dso_local global i32 0, align 4
@nouveau_device_sclass = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CLIENT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_client_create_(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.nouveau_object*, align 8
  %15 = alloca %struct.nouveau_client*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @nouveau_device_find(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.nouveau_object*
  store %struct.nouveau_object* %20, %struct.nouveau_object** %14, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %22 = icmp ne %struct.nouveau_object* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %69

26:                                               ; preds = %6
  %27 = load i32, i32* @NV_CLIENT_CLASS, align 4
  %28 = load i32, i32* @nouveau_device_sclass, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i8**, i8*** %13, align 8
  %31 = call i32 @nouveau_namedb_create_(i32* null, i32* null, i32* @nouveau_client_oclass, i32 %27, i32 %28, i32 0, i32 %29, i8** %30)
  store i32 %31, i32* %16, align 4
  %32 = load i8**, i8*** %13, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.nouveau_client*
  store %struct.nouveau_client* %34, %struct.nouveau_client** %15, align 8
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %7, align 4
  br label %69

39:                                               ; preds = %26
  %40 = load %struct.nouveau_client*, %struct.nouveau_client** %15, align 8
  %41 = call %struct.TYPE_4__* @nv_object(%struct.nouveau_client* %40)
  %42 = load %struct.nouveau_client*, %struct.nouveau_client** %15, align 8
  %43 = call %struct.TYPE_4__* @nv_object(%struct.nouveau_client* %42)
  %44 = load %struct.nouveau_client*, %struct.nouveau_client** %15, align 8
  %45 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %44, i32 0, i32 3
  %46 = call i32 @nouveau_handle_create(%struct.TYPE_4__* %41, i32 -1, i32 -1, %struct.TYPE_4__* %43, i32* %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %7, align 4
  br label %69

51:                                               ; preds = %39
  %52 = load %struct.nouveau_client*, %struct.nouveau_client** %15, align 8
  %53 = call %struct.TYPE_4__* @nv_object(%struct.nouveau_client* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @atomic_set(i32* %54, i32 2)
  %56 = load %struct.nouveau_object*, %struct.nouveau_object** %14, align 8
  %57 = load %struct.nouveau_client*, %struct.nouveau_client** %15, align 8
  %58 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %57, i32 0, i32 2
  %59 = call i32 @nouveau_object_ref(%struct.nouveau_object* %56, i32* %58)
  %60 = load %struct.nouveau_client*, %struct.nouveau_client** %15, align 8
  %61 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @snprintf(i32 %62, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @nouveau_dbgopt(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.nouveau_client*, %struct.nouveau_client** %15, align 8
  %68 = getelementptr inbounds %struct.nouveau_client, %struct.nouveau_client* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %51, %49, %37, %23
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i64 @nouveau_device_find(i32) #1

declare dso_local i32 @nouveau_namedb_create_(i32*, i32*, i32*, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @nouveau_handle_create(%struct.TYPE_4__*, i32, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local %struct.TYPE_4__* @nv_object(%struct.nouveau_client*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nouveau_object_ref(%struct.nouveau_object*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @nouveau_dbgopt(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
