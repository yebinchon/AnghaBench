; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_engine.c_nouveau_engine_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_engine.c_nouveau_engine_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_engine = type { i32, i32 }

@NV_ENGINE_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"disabled, %s=1 to enable\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_engine_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i8* %4, i8* %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_object*, align 8
  %11 = alloca %struct.nouveau_object*, align 8
  %12 = alloca %struct.nouveau_oclass*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca %struct.nouveau_device*, align 8
  %19 = alloca %struct.nouveau_engine*, align 8
  %20 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %10, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %11, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  %21 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %22 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %21)
  store %struct.nouveau_device* %22, %struct.nouveau_device** %18, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %25 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %12, align 8
  %26 = load i32, i32* @NV_ENGINE_CLASS, align 4
  %27 = load i8*, i8** %14, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = load i32, i32* %16, align 4
  %30 = load i8**, i8*** %17, align 8
  %31 = call i32 @nouveau_subdev_create_(%struct.nouveau_object* %23, %struct.nouveau_object* %24, %struct.nouveau_oclass* %25, i32 %26, i8* %27, i8* %28, i32 %29, i8** %30)
  store i32 %31, i32* %20, align 4
  %32 = load i8**, i8*** %17, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.nouveau_engine*
  store %struct.nouveau_engine* %34, %struct.nouveau_engine** %19, align 8
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %8
  %38 = load i32, i32* %20, align 4
  store i32 %38, i32* %9, align 4
  br label %64

39:                                               ; preds = %8
  %40 = load %struct.nouveau_device*, %struct.nouveau_device** %18, align 8
  %41 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %14, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @nouveau_boolopt(i32 %42, i8* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load %struct.nouveau_engine*, %struct.nouveau_engine** %19, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 @nv_warn(%struct.nouveau_engine* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %64

57:                                               ; preds = %39
  %58 = load %struct.nouveau_engine*, %struct.nouveau_engine** %19, align 8
  %59 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %58, i32 0, i32 1
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.nouveau_engine*, %struct.nouveau_engine** %19, align 8
  %62 = getelementptr inbounds %struct.nouveau_engine, %struct.nouveau_engine* %61, i32 0, i32 0
  %63 = call i32 @spin_lock_init(i32* %62)
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %57, %54, %37
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_subdev_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i8*, i8*, i32, i8**) #1

declare dso_local i32 @nouveau_boolopt(i32, i8*, i32) #1

declare dso_local i32 @nv_warn(%struct.nouveau_engine*, i8*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
