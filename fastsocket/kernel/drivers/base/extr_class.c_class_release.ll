; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_class.c_class_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_class.c_class_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.class_private = type { %struct.class* }
%struct.class = type { i32, i32 (%struct.class*)* }

@.str = private unnamed_addr constant [22 x i8] c"class '%s': release.\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"class '%s' does not have a release() function, be careful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kobject*)* @class_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @class_release(%struct.kobject* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.class_private*, align 8
  %4 = alloca %struct.class*, align 8
  store %struct.kobject* %0, %struct.kobject** %2, align 8
  %5 = load %struct.kobject*, %struct.kobject** %2, align 8
  %6 = call %struct.class_private* @to_class(%struct.kobject* %5)
  store %struct.class_private* %6, %struct.class_private** %3, align 8
  %7 = load %struct.class_private*, %struct.class_private** %3, align 8
  %8 = getelementptr inbounds %struct.class_private, %struct.class_private* %7, i32 0, i32 0
  %9 = load %struct.class*, %struct.class** %8, align 8
  store %struct.class* %9, %struct.class** %4, align 8
  %10 = load %struct.class*, %struct.class** %4, align 8
  %11 = getelementptr inbounds %struct.class, %struct.class* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.class*, %struct.class** %4, align 8
  %15 = getelementptr inbounds %struct.class, %struct.class* %14, i32 0, i32 1
  %16 = load i32 (%struct.class*)*, i32 (%struct.class*)** %15, align 8
  %17 = icmp ne i32 (%struct.class*)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.class*, %struct.class** %4, align 8
  %20 = getelementptr inbounds %struct.class, %struct.class* %19, i32 0, i32 1
  %21 = load i32 (%struct.class*)*, i32 (%struct.class*)** %20, align 8
  %22 = load %struct.class*, %struct.class** %4, align 8
  %23 = call i32 %21(%struct.class* %22)
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.class*, %struct.class** %4, align 8
  %26 = getelementptr inbounds %struct.class, %struct.class* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.class_private*, %struct.class_private** %3, align 8
  %31 = call i32 @kfree(%struct.class_private* %30)
  ret void
}

declare dso_local %struct.class_private* @to_class(%struct.kobject*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kfree(%struct.class_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
