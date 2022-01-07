; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_base.c_nouveau_bar_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bar/extr_base.c_nouveau_bar_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_bar = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"BARCTL\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bar_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_oclass*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.nouveau_device*, align 8
  %13 = alloca %struct.nouveau_bar*, align 8
  %14 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %16 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %15)
  store %struct.nouveau_device* %16, %struct.nouveau_device** %12, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %19 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i8**, i8*** %11, align 8
  %22 = call i32 @nouveau_subdev_create_(%struct.nouveau_object* %17, %struct.nouveau_object* %18, %struct.nouveau_oclass* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8** %21)
  store i32 %22, i32* %14, align 4
  %23 = load i8**, i8*** %11, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.nouveau_bar*
  store %struct.nouveau_bar* %25, %struct.nouveau_bar** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %42

30:                                               ; preds = %5
  %31 = load %struct.nouveau_device*, %struct.nouveau_device** %12, align 8
  %32 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_resource_start(i32 %33, i32 3)
  %35 = load %struct.nouveau_device*, %struct.nouveau_device** %12, align 8
  %36 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_resource_len(i32 %37, i32 3)
  %39 = call i32 @ioremap(i32 %34, i32 %38)
  %40 = load %struct.nouveau_bar*, %struct.nouveau_bar** %13, align 8
  %41 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %30, %28
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_subdev_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i8*, i8*, i32, i8**) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
