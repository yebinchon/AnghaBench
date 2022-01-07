; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_find_compatible_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_find_compatible_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i64, %struct.device_node* }

@devtree_lock = common dso_local global i32 0, align 4
@allnodes = common dso_local global %struct.device_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_find_compatible_node(%struct.device_node* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 @read_lock(i32* @devtree_lock)
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  br label %17

15:                                               ; preds = %3
  %16 = load %struct.device_node*, %struct.device_node** @allnodes, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi %struct.device_node* [ %14, %11 ], [ %16, %15 ]
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  br label %19

19:                                               ; preds = %49, %17
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.device_node*, %struct.device_node** %7, align 8
  %27 = getelementptr inbounds %struct.device_node, %struct.device_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.device_node*, %struct.device_node** %7, align 8
  %32 = getelementptr inbounds %struct.device_node, %struct.device_node* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @of_node_cmp(i64 %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30, %25
  br label %49

38:                                               ; preds = %30, %22
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @of_device_is_compatible(%struct.device_node* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.device_node*, %struct.device_node** %7, align 8
  %45 = call i64 @of_node_get(%struct.device_node* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %53

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.device_node*, %struct.device_node** %7, align 8
  %51 = getelementptr inbounds %struct.device_node, %struct.device_node* %50, i32 0, i32 1
  %52 = load %struct.device_node*, %struct.device_node** %51, align 8
  store %struct.device_node* %52, %struct.device_node** %7, align 8
  br label %19

53:                                               ; preds = %47, %19
  %54 = load %struct.device_node*, %struct.device_node** %4, align 8
  %55 = call i32 @of_node_put(%struct.device_node* %54)
  %56 = call i32 @read_unlock(i32* @devtree_lock)
  %57 = load %struct.device_node*, %struct.device_node** %7, align 8
  ret %struct.device_node* %57
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @of_node_cmp(i64, i8*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
