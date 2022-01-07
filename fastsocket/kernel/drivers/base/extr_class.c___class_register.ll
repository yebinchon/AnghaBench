; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_class.c___class_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_class.c___class_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { %struct.class_private*, i64, i32 }
%struct.class_private = type { %struct.TYPE_3__, %struct.class*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i8* }
%struct.lock_class_key = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"device class '%s': registering\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@klist_class_dev_get = common dso_local global i32 0, align 4
@klist_class_dev_put = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"struct class mutex\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@sysfs_dev_char_kobj = common dso_local global i64 0, align 8
@class_kset = common dso_local global i8* null, align 8
@class_ktype = common dso_local global i32 0, align 4
@block_class = common dso_local global %struct.class zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__class_register(%struct.class* %0, %struct.lock_class_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.class*, align 8
  %5 = alloca %struct.lock_class_key*, align 8
  %6 = alloca %struct.class_private*, align 8
  %7 = alloca i32, align 4
  store %struct.class* %0, %struct.class** %4, align 8
  store %struct.lock_class_key* %1, %struct.lock_class_key** %5, align 8
  %8 = load %struct.class*, %struct.class** %4, align 8
  %9 = getelementptr inbounds %struct.class, %struct.class* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.class_private* @kzalloc(i32 40, i32 %12)
  store %struct.class_private* %13, %struct.class_private** %6, align 8
  %14 = load %struct.class_private*, %struct.class_private** %6, align 8
  %15 = icmp ne %struct.class_private* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %89

19:                                               ; preds = %2
  %20 = load %struct.class_private*, %struct.class_private** %6, align 8
  %21 = getelementptr inbounds %struct.class_private, %struct.class_private* %20, i32 0, i32 5
  %22 = load i32, i32* @klist_class_dev_get, align 4
  %23 = load i32, i32* @klist_class_dev_put, align 4
  %24 = call i32 @klist_init(i32* %21, i32 %22, i32 %23)
  %25 = load %struct.class_private*, %struct.class_private** %6, align 8
  %26 = getelementptr inbounds %struct.class_private, %struct.class_private* %25, i32 0, i32 4
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.class_private*, %struct.class_private** %6, align 8
  %29 = getelementptr inbounds %struct.class_private, %struct.class_private* %28, i32 0, i32 3
  %30 = call i32 @kset_init(i32* %29)
  %31 = load %struct.class_private*, %struct.class_private** %6, align 8
  %32 = getelementptr inbounds %struct.class_private, %struct.class_private* %31, i32 0, i32 2
  %33 = load %struct.lock_class_key*, %struct.lock_class_key** %5, align 8
  %34 = call i32 @__mutex_init(i32* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* %33)
  %35 = load %struct.class_private*, %struct.class_private** %6, align 8
  %36 = getelementptr inbounds %struct.class_private, %struct.class_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.class*, %struct.class** %4, align 8
  %39 = getelementptr inbounds %struct.class, %struct.class* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @kobject_set_name(%struct.TYPE_4__* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %19
  %45 = load %struct.class_private*, %struct.class_private** %6, align 8
  %46 = call i32 @kfree(%struct.class_private* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %89

48:                                               ; preds = %19
  %49 = load %struct.class*, %struct.class** %4, align 8
  %50 = getelementptr inbounds %struct.class, %struct.class* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* @sysfs_dev_char_kobj, align 8
  %55 = load %struct.class*, %struct.class** %4, align 8
  %56 = getelementptr inbounds %struct.class, %struct.class* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i8*, i8** @class_kset, align 8
  %59 = load %struct.class_private*, %struct.class_private** %6, align 8
  %60 = getelementptr inbounds %struct.class_private, %struct.class_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i8* %58, i8** %62, align 8
  %63 = load %struct.class_private*, %struct.class_private** %6, align 8
  %64 = getelementptr inbounds %struct.class_private, %struct.class_private* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32* @class_ktype, i32** %66, align 8
  %67 = load %struct.class*, %struct.class** %4, align 8
  %68 = load %struct.class_private*, %struct.class_private** %6, align 8
  %69 = getelementptr inbounds %struct.class_private, %struct.class_private* %68, i32 0, i32 1
  store %struct.class* %67, %struct.class** %69, align 8
  %70 = load %struct.class_private*, %struct.class_private** %6, align 8
  %71 = load %struct.class*, %struct.class** %4, align 8
  %72 = getelementptr inbounds %struct.class, %struct.class* %71, i32 0, i32 0
  store %struct.class_private* %70, %struct.class_private** %72, align 8
  %73 = load %struct.class_private*, %struct.class_private** %6, align 8
  %74 = getelementptr inbounds %struct.class_private, %struct.class_private* %73, i32 0, i32 0
  %75 = call i32 @kset_register(%struct.TYPE_3__* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %57
  %79 = load %struct.class_private*, %struct.class_private** %6, align 8
  %80 = call i32 @kfree(%struct.class_private* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %89

82:                                               ; preds = %57
  %83 = load %struct.class*, %struct.class** %4, align 8
  %84 = call i32 @class_get(%struct.class* %83)
  %85 = call i32 @add_class_attrs(i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load %struct.class*, %struct.class** %4, align 8
  %87 = call i32 @class_put(%struct.class* %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %82, %78, %44, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.class_private* @kzalloc(i32, i32) #1

declare dso_local i32 @klist_init(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kset_init(i32*) #1

declare dso_local i32 @__mutex_init(i32*, i8*, %struct.lock_class_key*) #1

declare dso_local i32 @kobject_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.class_private*) #1

declare dso_local i32 @kset_register(%struct.TYPE_3__*) #1

declare dso_local i32 @add_class_attrs(i32) #1

declare dso_local i32 @class_get(%struct.class*) #1

declare dso_local i32 @class_put(%struct.class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
