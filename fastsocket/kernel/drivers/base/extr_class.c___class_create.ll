; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_class.c___class_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_class.c___class_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { i8*, i32, %struct.module* }
%struct.module = type { i32 }
%struct.lock_class_key = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@class_create_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.class* @__class_create(%struct.module* %0, i8* %1, %struct.lock_class_key* %2) #0 {
  %4 = alloca %struct.class*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lock_class_key*, align 8
  %8 = alloca %struct.class*, align 8
  %9 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.class* @kzalloc(i32 24, i32 %10)
  store %struct.class* %11, %struct.class** %8, align 8
  %12 = load %struct.class*, %struct.class** %8, align 8
  %13 = icmp ne %struct.class* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.class*, %struct.class** %8, align 8
  %20 = getelementptr inbounds %struct.class, %struct.class* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.module*, %struct.module** %5, align 8
  %22 = load %struct.class*, %struct.class** %8, align 8
  %23 = getelementptr inbounds %struct.class, %struct.class* %22, i32 0, i32 2
  store %struct.module* %21, %struct.module** %23, align 8
  %24 = load i32, i32* @class_create_release, align 4
  %25 = load %struct.class*, %struct.class** %8, align 8
  %26 = getelementptr inbounds %struct.class, %struct.class* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.class*, %struct.class** %8, align 8
  %28 = load %struct.lock_class_key*, %struct.lock_class_key** %7, align 8
  %29 = call i32 @__class_register(%struct.class* %27, %struct.lock_class_key* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %35

33:                                               ; preds = %17
  %34 = load %struct.class*, %struct.class** %8, align 8
  store %struct.class* %34, %struct.class** %4, align 8
  br label %40

35:                                               ; preds = %32, %14
  %36 = load %struct.class*, %struct.class** %8, align 8
  %37 = call i32 @kfree(%struct.class* %36)
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.class* @ERR_PTR(i32 %38)
  store %struct.class* %39, %struct.class** %4, align 8
  br label %40

40:                                               ; preds = %35, %33
  %41 = load %struct.class*, %struct.class** %4, align 8
  ret %struct.class* %41
}

declare dso_local %struct.class* @kzalloc(i32, i32) #1

declare dso_local i32 @__class_register(%struct.class*, %struct.lock_class_key*) #1

declare dso_local i32 @kfree(%struct.class*) #1

declare dso_local %struct.class* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
