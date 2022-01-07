; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32, %struct.nouveau_ofuncs* }
%struct.nouveau_ofuncs = type { i32 (%struct.nouveau_object.0*, %struct.nouveau_object.0*, %struct.nouveau_oclass.1*, i8*, i32, %struct.nouveau_object.0**)*, i32 (%struct.nouveau_object.2*)* }
%struct.nouveau_object.0 = type opaque
%struct.nouveau_oclass.1 = type opaque
%struct.nouveau_object.2 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to create 0x%08x, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_object_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_ofuncs*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %16 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %17 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %16, i32 0, i32 1
  %18 = load %struct.nouveau_ofuncs*, %struct.nouveau_ofuncs** %17, align 8
  store %struct.nouveau_ofuncs* %18, %struct.nouveau_ofuncs** %14, align 8
  %19 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* null, %struct.nouveau_object** %19, align 8
  %20 = load %struct.nouveau_ofuncs*, %struct.nouveau_ofuncs** %14, align 8
  %21 = getelementptr inbounds %struct.nouveau_ofuncs, %struct.nouveau_ofuncs* %20, i32 0, i32 0
  %22 = load i32 (%struct.nouveau_object.0*, %struct.nouveau_object.0*, %struct.nouveau_oclass.1*, i8*, i32, %struct.nouveau_object.0**)*, i32 (%struct.nouveau_object.0*, %struct.nouveau_object.0*, %struct.nouveau_oclass.1*, i8*, i32, %struct.nouveau_object.0**)** %21, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %24 = bitcast %struct.nouveau_object* %23 to %struct.nouveau_object.0*
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %26 = bitcast %struct.nouveau_object* %25 to %struct.nouveau_object.0*
  %27 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %28 = bitcast %struct.nouveau_oclass* %27 to %struct.nouveau_oclass.1*
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  %32 = bitcast %struct.nouveau_object** %31 to %struct.nouveau_object.0**
  %33 = call i32 %22(%struct.nouveau_object.0* %24, %struct.nouveau_object.0* %26, %struct.nouveau_oclass.1* %28, i8* %29, i32 %30, %struct.nouveau_object.0** %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %6
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %43 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %44 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @nv_error(%struct.nouveau_object* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  %50 = load %struct.nouveau_object*, %struct.nouveau_object** %49, align 8
  %51 = icmp ne %struct.nouveau_object* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.nouveau_ofuncs*, %struct.nouveau_ofuncs** %14, align 8
  %54 = getelementptr inbounds %struct.nouveau_ofuncs, %struct.nouveau_ofuncs* %53, i32 0, i32 1
  %55 = load i32 (%struct.nouveau_object.2*)*, i32 (%struct.nouveau_object.2*)** %54, align 8
  %56 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  %57 = load %struct.nouveau_object*, %struct.nouveau_object** %56, align 8
  %58 = bitcast %struct.nouveau_object* %57 to %struct.nouveau_object.2*
  %59 = call i32 %55(%struct.nouveau_object.2* %58)
  %60 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* null, %struct.nouveau_object** %60, align 8
  br label %61

61:                                               ; preds = %52, %48
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %7, align 4
  br label %67

63:                                               ; preds = %6
  %64 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  %65 = load %struct.nouveau_object*, %struct.nouveau_object** %64, align 8
  %66 = call i32 @nv_debug(%struct.nouveau_object* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @nv_error(%struct.nouveau_object*, i8*, i32, i32) #1

declare dso_local i32 @nv_debug(%struct.nouveau_object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
