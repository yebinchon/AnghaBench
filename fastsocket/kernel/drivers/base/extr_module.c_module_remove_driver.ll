; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_module.c_module_remove_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_module.c_module_remove_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.module_kobject*, i32 }
%struct.module_kobject = type { i32* }
%struct.TYPE_4__ = type { %struct.module_kobject }

@.str = private unnamed_addr constant [7 x i8] c"module\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @module_remove_driver(%struct.device_driver* %0) #0 {
  %2 = alloca %struct.device_driver*, align 8
  %3 = alloca %struct.module_kobject*, align 8
  %4 = alloca i8*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %2, align 8
  store %struct.module_kobject* null, %struct.module_kobject** %3, align 8
  %5 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %6 = icmp ne %struct.device_driver* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %59

8:                                                ; preds = %1
  %9 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %10 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @sysfs_remove_link(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %15 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %8
  %19 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %20 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.module_kobject* %22, %struct.module_kobject** %3, align 8
  br label %37

23:                                               ; preds = %8
  %24 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %25 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.module_kobject*, %struct.module_kobject** %27, align 8
  %29 = icmp ne %struct.module_kobject* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %32 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.module_kobject*, %struct.module_kobject** %34, align 8
  store %struct.module_kobject* %35, %struct.module_kobject** %3, align 8
  br label %36

36:                                               ; preds = %30, %23
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.module_kobject*, %struct.module_kobject** %3, align 8
  %39 = icmp ne %struct.module_kobject* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load %struct.module_kobject*, %struct.module_kobject** %3, align 8
  %42 = getelementptr inbounds %struct.module_kobject, %struct.module_kobject* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %47 = call i8* @make_driver_name(%struct.device_driver* %46)
  store i8* %47, i8** %4, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.module_kobject*, %struct.module_kobject** %3, align 8
  %52 = getelementptr inbounds %struct.module_kobject, %struct.module_kobject* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @sysfs_remove_link(i32* %53, i8* %54)
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @kfree(i8* %56)
  br label %58

58:                                               ; preds = %50, %45
  br label %59

59:                                               ; preds = %7, %58, %40, %37
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i8* @make_driver_name(%struct.device_driver*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
