; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_subdev.c_nouveau_subdev_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_subdev.c_nouveau_subdev_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_subdev = type { i8*, i32, i32, i32 }
%struct.nouveau_device = type { i8**, i32 }
%struct.TYPE_2__ = type { i32 }

@NV_SUBDEV_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_subdev_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i8* %4, i8* %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_object*, align 8
  %11 = alloca %struct.nouveau_object*, align 8
  %12 = alloca %struct.nouveau_oclass*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca %struct.nouveau_subdev*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.nouveau_device*, align 8
  %21 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %10, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %11, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  %22 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %24 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @NV_SUBDEV_CLASS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %16, align 4
  %29 = load i8**, i8*** %17, align 8
  %30 = call i32 @nouveau_object_create_(%struct.nouveau_object* %22, %struct.nouveau_object* %23, %struct.nouveau_oclass* %24, i32 %27, i32 %28, i8** %29)
  store i32 %30, i32* %19, align 4
  %31 = load i8**, i8*** %17, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.nouveau_subdev*
  store %struct.nouveau_subdev* %33, %struct.nouveau_subdev** %18, align 8
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %8
  %37 = load i32, i32* %19, align 4
  store i32 %37, i32* %9, align 4
  br label %78

38:                                               ; preds = %8
  %39 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %18, align 8
  %40 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %39, i32 0, i32 3
  %41 = load i8*, i8** %14, align 8
  %42 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %12, align 8
  %43 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %42, i32 0, i32 0
  %44 = call i32 @__mutex_init(i32* %40, i8* %41, i32* %43)
  %45 = load i8*, i8** %14, align 8
  %46 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %18, align 8
  %47 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %49 = icmp ne %struct.nouveau_object* %48, null
  br i1 %49, label %50, label %77

50:                                               ; preds = %38
  %51 = load %struct.nouveau_object*, %struct.nouveau_object** %10, align 8
  %52 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %51)
  store %struct.nouveau_device* %52, %struct.nouveau_device** %20, align 8
  %53 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %18, align 8
  %54 = call i32 @nv_hclass(%struct.nouveau_subdev* %53)
  %55 = and i32 %54, 255
  store i32 %55, i32* %21, align 4
  %56 = load %struct.nouveau_device*, %struct.nouveau_device** %20, align 8
  %57 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @nouveau_dbgopt(i32 %58, i8* %59)
  %61 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %18, align 8
  %62 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.nouveau_device*, %struct.nouveau_device** %20, align 8
  %64 = call %struct.TYPE_2__* @nv_subdev(%struct.nouveau_device* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %18, align 8
  %68 = getelementptr inbounds %struct.nouveau_subdev, %struct.nouveau_subdev* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i8**, i8*** %17, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.nouveau_device*, %struct.nouveau_device** %20, align 8
  %72 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %21, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %70, i8** %76, align 8
  br label %77

77:                                               ; preds = %50, %38
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %36
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local i32 @nouveau_object_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8**) #1

declare dso_local i32 @__mutex_init(i32*, i8*, i32*) #1

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nv_hclass(%struct.nouveau_subdev*) #1

declare dso_local i32 @nouveau_dbgopt(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @nv_subdev(%struct.nouveau_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
