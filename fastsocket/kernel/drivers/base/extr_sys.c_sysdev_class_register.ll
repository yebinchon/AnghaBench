; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_sys.c_sysdev_class_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_sys.c_sysdev_class_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.sysdev_class = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32*, i32* }

@.str = private unnamed_addr constant [31 x i8] c"Registering sysdev class '%s'\0A\00", align 1
@system_kset = common dso_local global %struct.TYPE_5__* null, align 8
@ktype_sysdev_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysdev_class_register(%struct.sysdev_class* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysdev_class*, align 8
  %4 = alloca i32, align 4
  store %struct.sysdev_class* %0, %struct.sysdev_class** %3, align 8
  %5 = load %struct.sysdev_class*, %struct.sysdev_class** %3, align 8
  %6 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.sysdev_class*, %struct.sysdev_class** %3, align 8
  %10 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %9, i32 0, i32 2
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.sysdev_class*, %struct.sysdev_class** %3, align 8
  %13 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = call i32 @memset(%struct.TYPE_6__* %14, i32 0, i32 4)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @system_kset, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.sysdev_class*, %struct.sysdev_class** %3, align 8
  %19 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32* %17, i32** %21, align 8
  %22 = load %struct.sysdev_class*, %struct.sysdev_class** %3, align 8
  %23 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32* @ktype_sysdev_class, i32** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @system_kset, align 8
  %27 = load %struct.sysdev_class*, %struct.sysdev_class** %3, align 8
  %28 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.sysdev_class*, %struct.sysdev_class** %3, align 8
  %32 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.sysdev_class*, %struct.sysdev_class** %3, align 8
  %35 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @kobject_set_name(%struct.TYPE_6__* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %1
  %43 = load %struct.sysdev_class*, %struct.sysdev_class** %3, align 8
  %44 = getelementptr inbounds %struct.sysdev_class, %struct.sysdev_class* %43, i32 0, i32 0
  %45 = call i32 @kset_register(%struct.TYPE_7__* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @kobject_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @kset_register(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
