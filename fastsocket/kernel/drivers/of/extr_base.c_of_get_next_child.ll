; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_get_next_child.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_base.c_of_get_next_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, %struct.device_node* }

@devtree_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_get_next_child(%struct.device_node* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %6 = call i32 @read_lock(i32* @devtree_lock)
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = getelementptr inbounds %struct.device_node, %struct.device_node* %14, i32 0, i32 1
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi %struct.device_node* [ %12, %9 ], [ %16, %13 ]
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  br label %19

19:                                               ; preds = %28, %17
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i64 @of_node_get(%struct.device_node* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %32

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = getelementptr inbounds %struct.device_node, %struct.device_node* %29, i32 0, i32 0
  %31 = load %struct.device_node*, %struct.device_node** %30, align 8
  store %struct.device_node* %31, %struct.device_node** %5, align 8
  br label %19

32:                                               ; preds = %26, %19
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = call i32 @of_node_put(%struct.device_node* %33)
  %35 = call i32 @read_unlock(i32* @devtree_lock)
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  ret %struct.device_node* %36
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
