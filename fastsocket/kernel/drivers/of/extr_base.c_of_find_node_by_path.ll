; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_find_node_by_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_find_node_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i64, %struct.device_node* }

@allnodes = common dso_local global %struct.device_node* null, align 8
@devtree_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_find_node_by_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device_node*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.device_node*, %struct.device_node** @allnodes, align 8
  store %struct.device_node* %4, %struct.device_node** %3, align 8
  %5 = call i32 @read_lock(i32* @devtree_lock)
  br label %6

6:                                                ; preds = %27, %1
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = getelementptr inbounds %struct.device_node, %struct.device_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @of_node_cmp(i64 %17, i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.device_node*, %struct.device_node** %3, align 8
  %23 = call i64 @of_node_get(%struct.device_node* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %31

26:                                               ; preds = %21, %14, %9
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.device_node*, %struct.device_node** %3, align 8
  %29 = getelementptr inbounds %struct.device_node, %struct.device_node* %28, i32 0, i32 1
  %30 = load %struct.device_node*, %struct.device_node** %29, align 8
  store %struct.device_node* %30, %struct.device_node** %3, align 8
  br label %6

31:                                               ; preds = %25, %6
  %32 = call i32 @read_unlock(i32* @devtree_lock)
  %33 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %33
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @of_node_cmp(i64, i8*) #1

declare dso_local i64 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
