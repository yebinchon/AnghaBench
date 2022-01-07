; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_find_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_find_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32, i32, %struct.property* }
%struct.device_node = type { %struct.property* }

@devtree_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.property*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store %struct.property* null, %struct.property** %4, align 8
  br label %44

12:                                               ; preds = %3
  %13 = call i32 @read_lock(i32* @devtree_lock)
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = getelementptr inbounds %struct.device_node, %struct.device_node* %14, i32 0, i32 0
  %16 = load %struct.property*, %struct.property** %15, align 8
  store %struct.property* %16, %struct.property** %8, align 8
  br label %17

17:                                               ; preds = %37, %12
  %18 = load %struct.property*, %struct.property** %8, align 8
  %19 = icmp ne %struct.property* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.property*, %struct.property** %8, align 8
  %22 = getelementptr inbounds %struct.property, %struct.property* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @of_prop_cmp(i32 %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.property*, %struct.property** %8, align 8
  %32 = getelementptr inbounds %struct.property, %struct.property* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %27
  br label %41

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.property*, %struct.property** %8, align 8
  %39 = getelementptr inbounds %struct.property, %struct.property* %38, i32 0, i32 2
  %40 = load %struct.property*, %struct.property** %39, align 8
  store %struct.property* %40, %struct.property** %8, align 8
  br label %17

41:                                               ; preds = %35, %17
  %42 = call i32 @read_unlock(i32* @devtree_lock)
  %43 = load %struct.property*, %struct.property** %8, align 8
  store %struct.property* %43, %struct.property** %4, align 8
  br label %44

44:                                               ; preds = %41, %11
  %45 = load %struct.property*, %struct.property** %4, align 8
  ret %struct.property* %45
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @of_prop_cmp(i32, i8*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
