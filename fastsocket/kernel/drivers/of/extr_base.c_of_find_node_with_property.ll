; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_find_node_with_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_find_node_with_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.property*, %struct.device_node* }
%struct.property = type { i32, %struct.property* }

@devtree_lock = common dso_local global i32 0, align 4
@allnodes = common dso_local global %struct.device_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_find_node_with_property(%struct.device_node* %0, i8* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @read_lock(i32* @devtree_lock)
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = getelementptr inbounds %struct.device_node, %struct.device_node* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load %struct.device_node*, %struct.device_node** @allnodes, align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi %struct.device_node* [ %13, %10 ], [ %15, %14 ]
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  br label %18

18:                                               ; preds = %44, %16
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = getelementptr inbounds %struct.device_node, %struct.device_node* %22, i32 0, i32 0
  %24 = load %struct.property*, %struct.property** %23, align 8
  store %struct.property* %24, %struct.property** %6, align 8
  br label %25

25:                                               ; preds = %39, %21
  %26 = load %struct.property*, %struct.property** %6, align 8
  %27 = icmp ne %struct.property* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.property*, %struct.property** %6, align 8
  %30 = getelementptr inbounds %struct.property, %struct.property* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @of_prop_cmp(i32 %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i32 @of_node_get(%struct.device_node* %36)
  br label %49

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.property*, %struct.property** %6, align 8
  %41 = getelementptr inbounds %struct.property, %struct.property* %40, i32 0, i32 1
  %42 = load %struct.property*, %struct.property** %41, align 8
  store %struct.property* %42, %struct.property** %6, align 8
  br label %25

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = getelementptr inbounds %struct.device_node, %struct.device_node* %45, i32 0, i32 1
  %47 = load %struct.device_node*, %struct.device_node** %46, align 8
  store %struct.device_node* %47, %struct.device_node** %5, align 8
  br label %18

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.device_node*, %struct.device_node** %3, align 8
  %51 = call i32 @of_node_put(%struct.device_node* %50)
  %52 = call i32 @read_unlock(i32* @devtree_lock)
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  ret %struct.device_node* %53
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @of_prop_cmp(i32, i8*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
