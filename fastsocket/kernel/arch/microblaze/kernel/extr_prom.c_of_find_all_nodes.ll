; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom.c_of_find_all_nodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom.c_of_find_all_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node* }

@devtree_lock = common dso_local global i32 0, align 4
@allnodes = common dso_local global %struct.device_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @of_find_all_nodes(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %4 = call i32 @read_lock(i32* @devtree_lock)
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = icmp ne %struct.device_node* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.device_node*, %struct.device_node** %2, align 8
  %9 = getelementptr inbounds %struct.device_node, %struct.device_node* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  br label %13

11:                                               ; preds = %1
  %12 = load %struct.device_node*, %struct.device_node** @allnodes, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi %struct.device_node* [ %10, %7 ], [ %12, %11 ]
  store %struct.device_node* %14, %struct.device_node** %3, align 8
  br label %15

15:                                               ; preds = %24, %13
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i64 @of_node_get(%struct.device_node* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %28

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.device_node*, %struct.device_node** %3, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 0
  %27 = load %struct.device_node*, %struct.device_node** %26, align 8
  store %struct.device_node* %27, %struct.device_node** %3, align 8
  br label %15

28:                                               ; preds = %22, %15
  %29 = load %struct.device_node*, %struct.device_node** %2, align 8
  %30 = call i32 @of_node_put(%struct.device_node* %29)
  %31 = call i32 @read_unlock(i32* @devtree_lock)
  %32 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %32
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
