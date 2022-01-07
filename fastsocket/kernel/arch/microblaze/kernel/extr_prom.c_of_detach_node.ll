; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom.c_of_detach_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/kernel/extr_prom.c_of_detach_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.device_node* }

@devtree_lock = common dso_local global i32 0, align 4
@allnodes = common dso_local global %struct.device_node* null, align 8
@OF_DETACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @of_detach_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @write_lock_irqsave(i32* @devtree_lock, i64 %7)
  %9 = load %struct.device_node*, %struct.device_node** %2, align 8
  %10 = getelementptr inbounds %struct.device_node, %struct.device_node* %9, i32 0, i32 2
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %3, align 8
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** @allnodes, align 8
  %17 = load %struct.device_node*, %struct.device_node** %2, align 8
  %18 = icmp eq %struct.device_node* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.device_node*, %struct.device_node** %2, align 8
  %21 = getelementptr inbounds %struct.device_node, %struct.device_node* %20, i32 0, i32 3
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** @allnodes, align 8
  br label %42

23:                                               ; preds = %15
  %24 = load %struct.device_node*, %struct.device_node** @allnodes, align 8
  store %struct.device_node* %24, %struct.device_node** %5, align 8
  br label %25

25:                                               ; preds = %32, %23
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = getelementptr inbounds %struct.device_node, %struct.device_node* %26, i32 0, i32 3
  %28 = load %struct.device_node*, %struct.device_node** %27, align 8
  %29 = load %struct.device_node*, %struct.device_node** %2, align 8
  %30 = icmp ne %struct.device_node* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 3
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  store %struct.device_node* %35, %struct.device_node** %5, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.device_node*, %struct.device_node** %2, align 8
  %38 = getelementptr inbounds %struct.device_node, %struct.device_node* %37, i32 0, i32 3
  %39 = load %struct.device_node*, %struct.device_node** %38, align 8
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = getelementptr inbounds %struct.device_node, %struct.device_node* %40, i32 0, i32 3
  store %struct.device_node* %39, %struct.device_node** %41, align 8
  br label %42

42:                                               ; preds = %36, %19
  %43 = load %struct.device_node*, %struct.device_node** %3, align 8
  %44 = getelementptr inbounds %struct.device_node, %struct.device_node* %43, i32 0, i32 1
  %45 = load %struct.device_node*, %struct.device_node** %44, align 8
  %46 = load %struct.device_node*, %struct.device_node** %2, align 8
  %47 = icmp eq %struct.device_node* %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.device_node*, %struct.device_node** %2, align 8
  %50 = getelementptr inbounds %struct.device_node, %struct.device_node* %49, i32 0, i32 0
  %51 = load %struct.device_node*, %struct.device_node** %50, align 8
  %52 = load %struct.device_node*, %struct.device_node** %3, align 8
  %53 = getelementptr inbounds %struct.device_node, %struct.device_node* %52, i32 0, i32 1
  store %struct.device_node* %51, %struct.device_node** %53, align 8
  br label %77

54:                                               ; preds = %42
  %55 = load %struct.device_node*, %struct.device_node** %2, align 8
  %56 = getelementptr inbounds %struct.device_node, %struct.device_node* %55, i32 0, i32 2
  %57 = load %struct.device_node*, %struct.device_node** %56, align 8
  %58 = getelementptr inbounds %struct.device_node, %struct.device_node* %57, i32 0, i32 1
  %59 = load %struct.device_node*, %struct.device_node** %58, align 8
  store %struct.device_node* %59, %struct.device_node** %6, align 8
  br label %60

60:                                               ; preds = %67, %54
  %61 = load %struct.device_node*, %struct.device_node** %6, align 8
  %62 = getelementptr inbounds %struct.device_node, %struct.device_node* %61, i32 0, i32 0
  %63 = load %struct.device_node*, %struct.device_node** %62, align 8
  %64 = load %struct.device_node*, %struct.device_node** %2, align 8
  %65 = icmp ne %struct.device_node* %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = getelementptr inbounds %struct.device_node, %struct.device_node* %68, i32 0, i32 0
  %70 = load %struct.device_node*, %struct.device_node** %69, align 8
  store %struct.device_node* %70, %struct.device_node** %6, align 8
  br label %60

71:                                               ; preds = %60
  %72 = load %struct.device_node*, %struct.device_node** %2, align 8
  %73 = getelementptr inbounds %struct.device_node, %struct.device_node* %72, i32 0, i32 0
  %74 = load %struct.device_node*, %struct.device_node** %73, align 8
  %75 = load %struct.device_node*, %struct.device_node** %6, align 8
  %76 = getelementptr inbounds %struct.device_node, %struct.device_node* %75, i32 0, i32 0
  store %struct.device_node* %74, %struct.device_node** %76, align 8
  br label %77

77:                                               ; preds = %71, %48
  %78 = load %struct.device_node*, %struct.device_node** %2, align 8
  %79 = load i32, i32* @OF_DETACHED, align 4
  %80 = call i32 @of_node_set_flag(%struct.device_node* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %14
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @write_unlock_irqrestore(i32* @devtree_lock, i64 %82)
  ret void
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @of_node_set_flag(%struct.device_node*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
