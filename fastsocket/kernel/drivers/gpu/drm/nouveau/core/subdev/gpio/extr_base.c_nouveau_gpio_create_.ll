; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_base.c_nouveau_gpio_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_base.c_nouveau_gpio_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_gpio = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@nouveau_gpio_find = common dso_local global i32 0, align 4
@nouveau_gpio_set = common dso_local global i32 0, align 4
@nouveau_gpio_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gpio_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.nouveau_gpio*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i8**, i8*** %13, align 8
  %21 = call i32 @nouveau_subdev_create_(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %19, i8** %20)
  store i32 %21, i32* %15, align 4
  %22 = load i8**, i8*** %13, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.nouveau_gpio*
  store %struct.nouveau_gpio* %24, %struct.nouveau_gpio** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %7, align 4
  br label %48

29:                                               ; preds = %6
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %14, align 8
  %32 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %31, i32 0, i32 3
  %33 = call i32 @nouveau_event_create(i32 %30, i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %7, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load i32, i32* @nouveau_gpio_find, align 4
  %40 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %14, align 8
  %41 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @nouveau_gpio_set, align 4
  %43 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %14, align 8
  %44 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @nouveau_gpio_get, align 4
  %46 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %14, align 8
  %47 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %38, %36, %27
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @nouveau_subdev_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i8*, i8*, i32, i8**) #1

declare dso_local i32 @nouveau_event_create(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
